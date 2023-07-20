%% Formatting
clc
clear
close all
format shortg

%% Importing CSV file
table = readtable("weights.csv","VariableNamingRule","preserve");
table.("Length [m]") = table.("Length [m]")./3.281;
table.("MTOW [kg]") = table.("MTOW [kg]")./2.205;

weight = table.("MTOW [kg]");
length = table.("Length [m]");
intLength = 0:80;
intModel = fit(length,weight,'exp1');
intWeight = 8426.*exp(0.05407.*intLength);

figure('Position',[450 450 900 600])
hold on
ylabel('MTOW [kg]')
xlabel('Aircraft Length [m]')
scatter(length,weight,'k','filled')
plot(intLength,intWeight,LineStyle="--",Color=[0 0 0],LineWidth=2)
yticklabels({'0' '10000' '20000' '30000' '40000' '50000' '60000' '70000' '80000'})
ax = gca;
ax.FontSize = 16;