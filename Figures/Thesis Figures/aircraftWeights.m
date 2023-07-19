%% Formatting
clc
clear
close all
format shortg

%% Importing CSV file
table = readtable("weights.csv","VariableNamingRule","preserve");