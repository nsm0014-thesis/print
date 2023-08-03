%% Formatting
clc
clear
close all
format shortg

%% Loading MAT Files
load("DA40ENGINE.mat")
load("DA40PF.mat")

figure('Position',[450 450 900 600])
hold on
grid on
xlabel('Engine RPM')
ylabel('Brake Specific Fuel Consumption [kg/J]')
plot(BSFC_LUT(1,:),BSFC_LUT(2,:),LineWidth=2,Color=[0 0 0])
ylim([0.45 0.6])
ax = gca;
ax.FontSize = 16;

figure('Position',[450 450 900 600])
hold on
grid on
xlabel('Fuel-to-Air Ratio')
ylabel('Power Factor')
plot(PowerFactor_LUT(1,:).*20,PowerFactor_LUT(2,:),LineWidth=2,Color=[0 0 0])
xlim([0.4 2.5])
ylim([-0.025 1.025])
ax = gca;
ax.FontSize = 16;