%%                                     Processing script                                                   %%
%                                                                                                           %
% Display connectivity matrices of mice studied in : Needham B.D et al., A gut bacterial metabolite         %
% modulates brain activity and anxiety-like behavior in mice, Nature (2021)                                 %
%                                                                                                           %
% Matrices obtained after fUSi acquisition in sedated mice for 15min in coronal plane Bregma - 0.9 mm ,     %
% Bregma - 1.6 mm and Bregma - 2mm                                                                          %
% ->  50 Regions of Interest (ROIs) where delimited in the plane Bregma -0.9mm                              %
% ->  42 Regions of Interest (ROIs) where delimited in the plane Bregma -1.6mm                              %
% ->  52 Regions of Interest (ROIs) where delimited in the plane Bregma -2mm                                %
%                                                                                                           %
% The Pearson correlation of the filtered signals of each pair of ROIs’ within a same plane were then       %
% calculated and the corresponding correlation values were stored in the cells where regions intersect in   % 
% the connectivity matrix                                                                                   %
%                                                                                                           %
%                                                                                                           %
% This script displays the average connectivity matrices of the control and positive groups in each         %
% coronal plane: individual connectivity matrices are available in the data section                         %
%                                                                                                           %
%                                                                                                           %



% load('Matrices_control_and_4EP+_plane-0.9mm.mat') 
% [uncomment line above if want to process visualize Bregma - 0.9 mm matrices]

% load('Matrices_control_and_4EP+_plane-1.6mm.mat')
% [uncomment line above if want to process visualize Bregma - 1.6 mm matrices]

% load('Matrices_control_and_4EP+_plane-2mm.mat')
% [uncomment line above if want to process visualize Bregma - 2 mm matrices]


Average_Matrix_control_group = (control_mouse_1 + control_mouse_2 + control_mouse_3 + control_mouse_4 + control_mouse_5 + control_mouse_6 + control_mouse_7)/7 ; 
Average_Matrix_positive_group = (positive_4EP_mouse_1 + positive_4EP_mouse_2 + positive_4EP_mouse_3 + positive_4EP_mouse_4 + positive_4EP_mouse_5 + positive_4EP_mouse_6 + positive_4EP_mouse_7)/7 ;

figure
subplot(2,1,1)
imagesc(Average_Matrix_control_group)
title('4EP-')
subplot(2,1,2)
imagesc(Average_Matrix_positive_group)
title('4EP+')
colormap jet
caxis([0 1])

