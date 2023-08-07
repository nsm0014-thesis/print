%% Formatting
clc
clear
close all
format shortg

%% Reading CSV file

data = readtable("digAR.csv","VariableNamingRule","preserve");

figure('Position',[450 450 900 600])
hold on
plot(data.x,data.A1,'k',LineWidth=2)
plot(data.x,data.A2,'k',LineWidth=2)
plot(data.x,data.A5,'k',LineWidth=2)
plot(data.x,data.A8,'k',LineWidth=2)
plot(data.x,data.Ainf,'k',LineWidth=2)
xlabel('Angle of Attack, \alpha')
ylabel('Lift Coefficient, C_L')
xlim([-0.1 1.1])
xticklabels({'0' '' '' '' '' '\infty'})
yticklabels({'0' '' '' '' '' '' '\infty'})
ax = gca;
ax.FontSize = 16;