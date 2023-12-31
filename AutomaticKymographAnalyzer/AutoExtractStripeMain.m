%% This code automatically loads kymograph file and peak position file: 

% Add path to accessory functions
addpath(genpath('functions'));


%% Cut7 Phospho Mutants
% mutant_type = "cut7_phospho\FL\9A";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","002_A","002_B","002_C","002_D","002_E","002_F","002_G",...
%              "003_A","003_B","003_C","003_D","003_E","003_F","003_G","003_H","003_I","003_J","003_K"];

% mutant_type = "cut7_phospho\FL\9D";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["002_B","002_C","002_D","002_E","002_F","002_G",...
%              "003_A","003_B","003_D","003_E","003_F","003_G","003_H",...
%              "004_A","004_B","004_C","004_D"];

% mutant_type = "cut7_phospho\FL\SS";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_C","001_D","001_E","001_F","001_G","001_H",...
%              "002_A","002_B","002_C","002_D","002_E","002_F","002_G","002_I",...
%              "003_A","003_B","003_C","003_E"];
% 
% mutant_type = "cut7_phospho\1030TD\9A";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_C","001_D","001_E","001_F",...
%              "002_B","002_C","002_D","002_E",...
%              "003_A","003_B","003_C","003_D","003_E","003_F","003_G","003_H"];

% mutant_type = "cut7_phospho\1030TD\9D";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_C","001_D","001_E",...
%              "002_A","002_B","002_C","003_A","003_B","003_C",...
%              "004_B","004_C","004_D","004_E","004_F"];

% mutant_type = "cut7_phospho\1030TD\SS";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_C","001_D","001_E","001_F",...
%              "002_A","002_B","002_C","002_D","002_E","002_F","002_G",...
%              "003_A","003_B","003_C","003_D","003_E","003_F","003_G","003_H","003_I"];
% 

%% Cut7 Truncation Mutants - Kinesin 14 WT
mutant_type = "cut7_FL\pkl1_klp2_WT";
data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
data_list = ["001_A","001_B","001_C","001_D","001_E",...
             "002_A","002_B","002_C","002_D",...
             "003_A","003_B","003_C","003_D",...
             "004_A","004_B","004_C","004_D","004_E","004_F",...
             "005_A","005_B","005_C","005_D","005_E","005_F","005_G","005_H","005_I","005_J"];

% mutant_type = "cut7_1032_TD\pkl1_klp2_WT";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_C","002_A","002_B","002_C","002_D","002_E","002_F",...
%     "003_A","003_B","003_C","003_D","003_E","003_F","003_G",...
%     "004_A","004_B","004_C","004_D","004_E","004_G",...
%     "005_B","005_C","005_D","005_E","005_F","005_G",...
%     "006_A","006_B","006_C","006_D","006_E","006_F"];

% mutant_type = "cut7_1017_TD\pkl1_klp2_WT";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_C","001_D","002_A","002_B","002_C",...
%              "003_A","003_B","003_C","003_D","003_F","003_H",...
%              "004_A","004_B","004_D","004_E","004_F","004_G","004_H","004_I"...
%              "005_A","005_B","005_C","005_D","005_E","005_F","005_G","005_H"];

% mutant_type = "cut7_internalD\pkl1_klp2_WT";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_D",...
%     "002_A","002_C","002_D","002_E","002_F",...
%     "003_A","003_B","003_C","003_D","003_E",...
%     "004_A","004_B","004_C","004_D",...
%     "005_A","005_B","005_C","005_D","005_E","005_F","005_G"...
%     "006_A","006_B","006_C","006_D","006_E","006_F"];



%% Cut7 Truncation Mutants - Kinesin 14 Del
% mutant_type = "cut7_FL\pkl1D_klp2D";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_1","001_2","001_3","001_4","001_7","001_8","001_9","001_10","001_12",...
%     "002_19","002_20","002_21",...
%     "003_22","003_24","003_25","003_26","003_28","003_29","003_30","003_31","003_32","003_34",...
%     "004_A","004_B","004_C","004_D","004_E","004_F","004_H",...
%     "005_B","005_C","005_D","005_E","005_F","005_H","005_I","005_K","005_L"...
%     "006_A","006_C","007_C","007_D","007_F","007_G"];
% % No Protrusion List:
% data_list = ["001_2","001_8","001_9","001_10","003_22","003_24",...
%              "004_B","004_D","004_E","004_H","005_B","005_C","005_E",...
%              "006_A","006_C","007_C","007_D","007_F","007_G"];

% mutant_type = "cut7_1032_TD\pkl1D_klp2D";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_1","001_2","001_3","001_5","001_6","001_7","001_8","001_9","001_10",...
%              "002_11","002_12","002_13","002_15","002_16","002_17","002_19",...
%              "003_20","003_22","003_24","003_25","003_26","003_27","003_28",...
%              "004_30","004_32","004_34","004_35","004_37","004_38","004_39",...
%              "005_A","005_B","005_C","005_D"];
% % % No Protrusion List:
% % data_list = ["001_5","001_8","001_10","002_11","002_12","002_15","002_16","002_17",...
% %              "003_22","003_24","003_28","004_38","005_A","005_B","005_D"];

% mutant_type = "cut7_1017_TD\pkl1D_klp2D";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_1","001_2","001_3","001_4","001_6","001_7","001_8","001_9","001_10",...
%     "002_11","002_12","002_13","002_14","002_15","002_16","002_17","002_18","002_19",...
%     "003_21","003_22","003_23","003_24","003_25","003_26","003_27"...
%     "004_30","004_31","004_32","004_33","004_34","004_35","004_36","004_37","004_38","004_39"];
% % % No Protrusion List:
% % data_list = ["001_1","001_2","001_3","001_4","001_7","001_8","001_9","001_10",...
% %     "002_11","002_12","002_13","002_14","002_15","002_16","002_17","002_18",...
% %     "003_21","003_22","003_23","003_24","003_25","003_26","003_27"...
% %     "004_30","004_31","004_32","004_33","004_34","004_36","004_37","004_38","004_39"];

% mutant_type = "cut7_1006_TD\pkl1D_klp2D";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_A","001_B","001_C","002_A","002_B","002_C","002_D","002_E"...
%     "003_A","003_B","003_C","003_D","003_E"];
% 
% mutant_type = "cut7_988_TD\pkl1D_klp2D";
% data_path = "C:\Research\Softwares\Kymographs Maker\BatchKymographMaker\Saved Data\" + mutant_type + "\";
% data_list = ["001_1","001_2","001_3","001_4","001_5","001_6","001_22","001_23","001_24","001_25",...
%              "002_7","002_8","002_9","002_26","002_27","002_28",...
%              "003_11","003_12","003_13","003_14","003_15","003_29","003_30",...
%              "004_16","004_17","004_18","004_19","004_20","004_31","004_32","004_33","004_34","004_35","004_36",...
%              "005_37","005_38","005_39","005_40","005_41","005_42"];

if ~exist("Saved Data", 'dir')
    mkdir("Saved Data")
end
cd 'Saved Data'
mkdir(mutant_type);
cd ..

Average_collection = zeros(15, 150);
Error_collection = zeros(15, 1);
CellLines_collection = zeros(1, 13);

for p2p_length_idx = 1:1:10
    % Pick the length on kymograph to make average intensity plot
    % p2p_length = 5;         % Desired peak seperation, in microns
    p2p_length = p2p_length_idx;    % Desired peak seperation, in microns
    p2p_range = 0.1;          % Desired peak seperation interval, in microns
    
    % Initialize empty string array to store all kymograph locations
    Kym_files = strings(1, length(data_list));
    pos_files = strings(1, length(data_list));
    
    % Initialize a stripe collection full of zeros (NaNs), then append each stripe to the collection
    Stripe_Collection = zeros(150, 150); 
    Stripe_Collection( Stripe_Collection == 0 ) = NaN;
    First_Row = 1;
    
    for idx = 1 : length(data_list)
        % Load the "Kymograph" and "pos_cut7_pk" variable to workspace: 
        Kym_files(idx) = strcat(data_path , string(data_list(idx)), '\bkg_subtracted_kymograph.mat');
        pos_files(idx) = strcat(data_path , string(data_list(idx)), '\pos_cut7_pk.mat');
        load(Kym_files(idx));
        load(pos_files(idx));
        % Extract a stripe segment of the kymograph, with a given length interval: 
        Stripe = ExtractStripe(pos_cut7_pk, kymograph_sub, p2p_length, p2p_range);
        % Append New Stripe to Stripe Collection: 
        Stripe_Collection( First_Row : (First_Row + size(Stripe,1) - 1) , 1 : size(Stripe,2) ) = Stripe;
        First_Row = First_Row + size(Stripe, 1);     % Update The "new" First_Row with NaNs
    end
    
% % % %     Swap the orientation of the even rows backwards, then add to stripe
% % % %     collection for averaging
% %     for lines = 2 : 2 : 150
% %         even_lines = Stripe_Collection(lines, 1:round(9.372*p2p_length+21));
% %         flipped_lines = flip(even_lines, 2);
% %         Stripe_Collection(lines, 1:round(9.372*p2p_length+21)) = flipped_lines;
% %     end

    figure;
    imagesc(Stripe_Collection); colormap gray;
    out_filename = "Saved Data\" + mutant_type + "\Stripe_Collection_" + num2str(p2p_length,'%.1f') + "_microns.mat";
    save(out_filename, "Stripe_Collection");
    out_filename = "Saved Data\" + mutant_type + "\Stripe_Collection_" + num2str(p2p_length,'%.1f') + "_microns.png";
    exportgraphics(gcf, out_filename);
    
    %% Plot the Intensity Profile (Horizontal Line on Kymograph)
    n_lines = First_Row - 1;
    Average_Intensity_Line = sum(Stripe_Collection, 1, 'omitnan') / n_lines;
    Average_collection(p2p_length_idx, 1:length(Average_Intensity_Line)) = Average_Intensity_Line;
    CellLines_collection(1, p2p_length_idx+2) = n_lines;
    CellLines_collection(1, 1) = length(data_list);

    % Find standand deviation of the horizontal linescans and save for later analysis. 
    Total_horizontal_intensity = sum(Stripe_Collection, 2, 'omitnan');
    Stdev_horizontal_intensity = std(Total_horizontal_intensity(1:n_lines));
    Error_collection(p2p_length_idx) = std(sum(Stripe_Collection, 2, 'omitnan')) / sqrt(n_lines);
    figure;
    plot(((1:10*(p2p_length+2))-10.67)*0.1067, Average_Intensity_Line(1:10*(p2p_length+2)), 'LineWidth', 3, 'Color', [0.1 0.1 0.1]);
    hold on;
    for jline = 1 : n_lines
        Single_Stripe = Stripe_Collection(jline, 1:10*(p2p_length+2));
        plot(((1 : length(Single_Stripe))-10.67)*0.1067, Single_Stripe);
    end
    % Plot some vertical reference mark at peak position
    plot(zeros(40,1), 1:100:4000, 'k--');
    plot(ones(40,1)*(p2p_length), 1:100:4000, 'k--');
% %     plot(zeros(40,1)-0.4, 1:100:4000, 'k--');
% %     plot(zeros(40,1)+0.4, 1:100:4000, 'k--');
% %     plot(ones(40,1)*(p2p_length)-0.4, 1:100:4000, 'k--');
% %     plot(ones(40,1)*(p2p_length)+0.4, 1:100:4000, 'k--');
% %
% %   % Re-plot the average intensity line to display on top
    plot(((1:10*(p2p_length+2))-10.67)*0.1067, Average_Intensity_Line(1:10*(p2p_length+2)), 'LineWidth', 3, 'Color', [0.1 0.1 0.1]);
% %     legend('average intensity profile', 'location', 'northeast', "FontName", "Arial", "FontSize", 18);
% %     legend boxoff;
% %     title(sprintf('spindle length = %.0f\\mum', p2p_length), 'Position', [7.5, 1200, 0]);
    axis([-0.5 11 0 1500]);
    % % % % PNAS DIMENSION, DON'T CHANGE THIS!!! % % % % 
    set(gca, "FontName","Arial", "FontSize",18, "Units", "centimeters", "Position", [2.7, 1.8, 12.8, 9.6]); %, "YTickLabel", ""); %, "FontWeight", "bold"
    set(gcf, "Units", "centimeters", "Position", [17, 14, 15.6, 11.7])
    % % % % PNAS DIMENSION, DON'T CHANGE THIS!!! % % % % 
    xticks(0:1:10);
    xtickangle(0);
    xlabel('Distance along the spindle axis (\mum)','FontName','Arial','FontSize',18);
    ylabel('Cut7 intensity (a.u.)','FontName','Arial','FontSize',18);
    hold off;
    out_filename = "Saved Data\" + mutant_type + "\Cut7_Intensity_Avg_Plot_" + num2str(p2p_length,'%.1f') + "_microns.png";
    saveas(gcf, out_filename);
    close all;
end

% % % % New 3D plot of all average lines
% % figure;
% % Single_Average = Average_collection(1, 1:25);
% % plot3(1*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0.4, 0.4, 0.4]);
% % hold on;
% % Single_Average = Average_collection(2, 1:35);
% % plot3(2*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0, 0.8, 0]);
% % Single_Average = Average_collection(3, 1:45);
% % plot3(3*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0, 0.8, 0.9]);
% % Single_Average = Average_collection(4, 1:55);
% % plot3(4*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0.72, 0.75, 0]);
% % Single_Average = Average_collection(5, 1:65);
% % plot3(5*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [1, 0, 0]);
% % Single_Average = Average_collection(6, 1:75);
% % plot3(6*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0, 0, 0.69]);
% % Single_Average = Average_collection(7, 1:85);
% % plot3(7*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [1, 0.5, 0.0]);
% % Single_Average = Average_collection(8, 1:95);
% % plot3(8*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0.6, 0.3, 0.2]);
% % Single_Average = Average_collection(9, 1:105);
% % plot3(9*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0.6, 0, 0.9]);
% % Single_Average = Average_collection(10, 1:115);
% % plot3(10*ones(length(Single_Average)), (((1:length(Single_Average))-10.67)*0.1067), Single_Average, "LineWidth", 3, "Color", [0.7, 0.7, 0.7]);
% % xlabel('cut7 peak to peak distance (\mum)');
% % ylabel('Distance along the spindle axis (\mum)');
% % zlabel('Cut7 Intensity (a.u.)')
% % grid on;
% % hold off;
% % out_filename = "Saved Data\" + mutant_type + "\Cut7_Intensity_Avg_Plot_All_3D.fig";
% % saveas(gcf, out_filename);

% % Save the "pseudo average kymograph"
figure;
imagesc(Average_collection); colormap gray;
colorbar;
out_filename = "Saved Data\" + mutant_type + "\Stripe_Collection_Avg_All.png";
exportgraphics(gcf, out_filename);
out_filename = "Saved Data\" + mutant_type + "\Stripe_Collection_Avg_All.mat";
save(out_filename, "Average_collection");
out_filename = "Saved Data\" + mutant_type + "\Stripe_Collection_Err_All.mat";
save(out_filename, "Error_collection");

% % Original 2D plot of all average lines
figure; 
axis([-0.5 11  0 1500]);
hold on;
Single_Average = Average_collection(1, 1:29);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [1, 0, 0]);
Single_Average = Average_collection(2, 1:38);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [1, 0.5, 0]);
Single_Average = Average_collection(3, 1:50);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.95, 0.75, 0]);
Single_Average = Average_collection(4, 1:60);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.65, 0.85, 0]);
Single_Average = Average_collection(5, 1:70);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.1, 0.8, 0.1]);
Single_Average = Average_collection(6, 1:80);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0, 0.9, 0.9]);
Single_Average = Average_collection(7, 1:90);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0, 0.5, 1]);
Single_Average = Average_collection(8, 1:100);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.1, 0.1, 1]);
Single_Average = Average_collection(9, 1:105);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.5, 0, 0.9]);
Single_Average = Average_collection(10, 1:115);
plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.9, 0, 0.7]);
plot(zeros(40,1), 1:100:4000, 'k--');
box on;
% % % % PNAS DIMENSION, DON'T CHANGE THIS!!! % % % % 
set(gca, "FontName","Arial", "FontSize",21, "Units","centimeters", "Position",[3.2, 2.2, 16, 12]);
set(gcf, "Units", "centimeters", "Position", [14, 4, 20, 15])
% % % % PNAS DIMENSION, DON'T CHANGE THIS!!! % % % % 
xticks(0:2:10);
xlabel('Distance along the spindle axis (\mum)','FontName','Arial','FontSize',21);
ylabel('Cut7 Intensity (a.u.)','FontName','Arial', 'FontSize',21);
hold off;
% out_filename = "Saved Data\" + mutant_type + "\Cut7_Intensity_Avg_Plot_No_Label.png";
out_filename = "Saved Data\" + mutant_type + "\Cut7_Intensity_Avg_Plot.png";
saveas(gcf, out_filename);
% exportgraphics(gcf, out_filename);


% % % % Number-Color Scheme: 
% % % % Original 2D plot of all average lines
% % figure; 
% % axis([-0.5 11  0 1500]);
% % hold on;
% % Single_Average = Average_collection(1, 1:29);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.4, 0.4, 0.4]);
% % Single_Average = Average_collection(2, 1:38);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0, 0.8, 0]);
% % Single_Average = Average_collection(3, 1:47);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0, 0.8, 0.9]);
% % Single_Average = Average_collection(4, 1:56);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.72, 0.75, 0]);
% % Single_Average = Average_collection(5, 1:65);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [1, 0, 0]);
% % Single_Average = Average_collection(6, 1:75);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0, 0, 0.69]);
% % Single_Average = Average_collection(7, 1:85);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [1, 0.5, 0.0]);
% % Single_Average = Average_collection(8, 1:95);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.6, 0.3, 0.2]);
% % Single_Average = Average_collection(9, 1:105);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.6, 0, 0.9]);
% % Single_Average = Average_collection(10, 1:115);
% % plot(((1:length(Single_Average))-10.67)*0.1067, Single_Average, "LineWidth", 2, "Color", [0.7, 0.7, 0.7]);
% % plot(zeros(40,1), 1:100:4000, 'k--');
% % box on;
% % set(gca, "FontSize", 14, "FontWeight", "bold"); %, "YTickLabel", "");
% % xlabel('Distance along the spindle axis (\mum)');
% % ylabel('Cut7 Intensity (a.u.)');
% % hold off;
% % out_filename = "Saved Data\" + mutant_type + "\Cut7_Intensity_Avg_Plot_All_2D.png";
% % exportgraphics(gcf, out_filename);
