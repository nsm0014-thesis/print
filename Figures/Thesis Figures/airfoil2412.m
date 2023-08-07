%% Formatting
clc
clear
close all
format shortg

%% Importing data
airfoilData = readtable("n0012-il.csv");
airfoilOutline = table2array(airfoilData(8:138,:));
camberLine = table2array(airfoilData(141:206,:));
chordLine = table2array(airfoilData(209:210,:));

figure
hold on
axis off
plot(airfoilOutline(:,1),airfoilOutline(:,2),LineWidth=2)
plot(camberLine(:,1),camberLine(:,2),LineWidth=2)
plot(chordLine(:,1),chordLine(:,2),LineWidth=2)