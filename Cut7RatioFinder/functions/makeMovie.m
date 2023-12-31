function makeMovie(movie3D, first_frame, last_frame, movie_name, pos_cut7_pk)
    
    if nargin == 5
        movie_path = strcat('./', movie_name, '.mp4');
        vidfile = VideoWriter(movie_path,'MPEG-4');
        vidfile.FrameRate = 10;
        open(vidfile);
        hhh = figure;
        
        for frame_number = first_frame:last_frame
            img = movie3D(:,:,:,frame_number);
            img_smoothed = imgaussfilt3(img);
            img_MIP = max(img_smoothed, [], 3);
            % use SPB position for Cut-7 position and extended position
            cut7_pos1 = pos_cut7_pk(1,:,frame_number);
            cut7_pos2 = pos_cut7_pk(2,:,frame_number);
            % find the spindle orientation and its normal (for drawing the rectangle)
            expansion_radius = 4;
            spindle_vector = cut7_pos2 - cut7_pos1; 
            spindle_vector_norm = spindle_vector / norm(spindle_vector);
            z_norm = [0,0,1];
            expand_dir = cross([spindle_vector_norm, 0], z_norm);
            expand_line = expansion_radius * expand_dir;
            expand_line(expand_line==0) = [];
            % add extra distance to the spindle pole, along the spindle line
            end_pos1 = cut7_pos1 - spindle_vector_norm * expansion_radius;
            int_pos1 = cut7_pos1 + spindle_vector_norm * expansion_radius;
            end_pos2 = cut7_pos2 + spindle_vector_norm * expansion_radius;
            int_pos2 = cut7_pos2 - spindle_vector_norm * expansion_radius;
            % plot(end_pos1(1),end_pos1(2),"ro",'MarkerSize',5,'LineWidth',1);
            % plot(end_pos2(1),end_pos2(2),"bo",'MarkerSize',5,'LineWidth',1);
            % find the coordinates of the rectangle's four corners
            rec_1a = end_pos1 + expand_line;
            rec_1b = end_pos1 - expand_line;
            rec_1c = int_pos1 - expand_line;
            rec_1d = int_pos1 + expand_line;
            rec_2a = end_pos2 + expand_line;
            rec_2b = end_pos2 - expand_line;
            rec_2c = int_pos2 - expand_line;
            rec_2d = int_pos2 + expand_line;
    
            % display images, coordinates of points and make movie:
            imagesc(img_MIP); colormap('gray'); colorbar;
            hold on; 
            plot(cut7_pos1(1),cut7_pos1(2),"ro",'MarkerSize',5,'LineWidth',1);
            plot(cut7_pos2(1),cut7_pos2(2),"bo",'MarkerSize',5,'LineWidth',1);
            % plot the corners of the rectangle
            plot(rec_1a(1),rec_1a(2),"mo",'MarkerSize',5,'LineWidth',1);
            plot(rec_1b(1),rec_1b(2),"mo",'MarkerSize',5,'LineWidth',1);
            plot(rec_1c(1),rec_1c(2),"mo",'MarkerSize',5,'LineWidth',1);
            plot(rec_1d(1),rec_1d(2),"mo",'MarkerSize',5,'LineWidth',1);
            plot(rec_2a(1),rec_2a(2),"co",'MarkerSize',5,'LineWidth',1);
            plot(rec_2b(1),rec_2b(2),"co",'MarkerSize',5,'LineWidth',1);
            plot(rec_2c(1),rec_2c(2),"co",'MarkerSize',5,'LineWidth',1);
            plot(rec_2d(1),rec_2d(2),"co",'MarkerSize',5,'LineWidth',1);
            
            % plot the edge of the rectangle
            % first pole:
            line([rec_1a(1), rec_1b(1)], [rec_1a(2), rec_1b(2)], 'Color', 'r', 'LineWidth', 3);
            line([rec_1b(1), rec_1c(1)], [rec_1b(2), rec_1c(2)], 'Color', 'r', 'LineWidth', 3);
            line([rec_1c(1), rec_1d(1)], [rec_1c(2), rec_1d(2)], 'Color', 'r', 'LineWidth', 3);
            line([rec_1d(1), rec_1a(1)], [rec_1d(2), rec_1a(2)], 'Color', 'r', 'LineWidth', 3);
            % second pole:
            line([rec_2a(1), rec_2b(1)], [rec_2a(2), rec_2b(2)], 'Color', 'b', 'LineWidth', 3);
            line([rec_2b(1), rec_2c(1)], [rec_2b(2), rec_2c(2)], 'Color', 'b', 'LineWidth', 3);
            line([rec_2c(1), rec_2d(1)], [rec_2c(2), rec_2d(2)], 'Color', 'b', 'LineWidth', 3);
            line([rec_2d(1), rec_2a(1)], [rec_2d(2), rec_2a(2)], 'Color', 'b', 'LineWidth', 3);
            % midzone:
            line([rec_1c(1), rec_1d(1)], [rec_1c(2), rec_1d(2)], 'Color', 'y', 'LineWidth', 1);
            line([rec_2c(1), rec_2d(1)], [rec_2c(2), rec_2d(2)], 'Color', 'y', 'LineWidth', 1);
            line([rec_1c(1), rec_2c(1)], [rec_1c(2), rec_2c(2)], 'Color', 'y', 'LineWidth', 1);
            line([rec_1d(1), rec_2d(1)], [rec_1d(2), rec_2d(2)], 'Color', 'y', 'LineWidth', 1);
            
            hold off;
            title(sprintf('Frame = %.0f',frame_number));
            writeVideo(vidfile, getframe(gcf));
    
        end
        close(vidfile);
        close(hhh);
    end

    if nargin == 4
        movie_path = strcat('./', movie_name, '.mp4');
        vidfile = VideoWriter(movie_path,'MPEG-4');
        vidfile.FrameRate = 10;
        open(vidfile);
        ggg = figure;
        
        for frame_number = first_frame:last_frame
            img = movie3D(:,:,:,frame_number);
            img_smoothed = imgaussfilt3(img);
            img_MIP = max(img_smoothed, [], 3);
            % display images and make movie:
            imagesc(img_MIP); colormap('gray'); colorbar;
            title(sprintf('Frame = %.0f',frame_number));
            writeVideo(vidfile, getframe(gcf));
        end
        close(vidfile);
        close(ggg);
    end

end