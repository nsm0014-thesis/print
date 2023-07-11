%% Formatting
clc
clear
close all
format shortg

%% Importing data
airfoilData = readtable("fx63137-il.csv");
airfoilOutline = table2array(airfoilData(8:104,:));
camberLine = table2array(airfoilData(107:155,:));
chordLine = table2array(airfoilData(158:159,:));

figure
hold on
axis off
plot(airfoilOutline(:,1),airfoilOutline(:,2),LineWidth=2)
plot(camberLine(:,1),camberLine(:,2),LineWidth=2)
plot(chordLine(:,1),chordLine(:,2),LineWidth=2)