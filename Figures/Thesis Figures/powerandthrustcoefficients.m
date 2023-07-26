%% Formatting
clc
clear
close all
format shortg

%% Reading in CSV file
data = readtable("digitizedstaticthrust.csv","VariableNamingRule","preserve");

CP = (447.42*550)/(1.225*36.6^3*1.9^5)
CPCT = interp1(data.x,data.("CL = 0.500"),CP)

figure('Position',[450 450 900 600])
hold on
grid on
% plot(data.x,data.("CL = 0.700"),'LineWidth',2,'Color',[0 0 0],'Marker','+')
% plot(data.x,data.Ideal,'LineWidth',1.5,'Color',[0 0 0],'Marker','+')
plot(data.x,data.("CL = 0.500"),'LineWidth',2,'Color',[0 0 0])
scatter(CP,CPCT,125,'red','o','filled')
% plot(data.x,data.("CL = 0.300"),'LineWidth',2,'Color',[0 0 0],'Marker','square')
% plot(data.x,data.("CL = 0.150"),'LineWidth',2,'Color',[0 0 0],'Marker','o')
xlabel('C_P')
ylabel('C_T/C_P')
legend('Blade Design C_L = 0.5','Design Point')
ylim([0 3.25])
xlim([0 0.32])
ax = gca;
ax.FontSize = 16;