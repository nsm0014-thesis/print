%% Formatting
clc
clear
close all
format short

%% Defining Gagg and Ferrar Model
altitude = 0:10000;
kw = 447.42;

rho0 = 1.225;

[~,~,~,rho,~] = atmosisa(altitude);

ratio = rho./rho0;

power = kw.*(ratio - ((1 - ratio)/7.55));

figure('Position',[450 450 900 600])
hold on
plot(power,altitude,'k',LineWidth=2)
xlabel('Max Engine Power [kW]')
ylabel('Altitude [m]')
ax = gca;
ax.FontSize = 16;