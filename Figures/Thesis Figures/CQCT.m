%% Formatting
clc
clear
close all
format shortg

J = (0:0.1:3);

CT= 0.0041.*J.^3 - 0.0353*J.^2 - 0.0177.*J + 0.0947;
CQ = 0.001.*J.^4 - 0.008.*J.^3 + 0.0078.*J.^2 - 0.0035.*J + 0.0114;

figure
hold on
plot(J,CT,LineWidth=2)
plot(J,CQ,LineWidth=2)
ylim([0 0.1])
ylabel('Thrust, Torque Coefficients')
xlabel('Advance Ratio, J')
legend('Thrust Coefficient','Torque Coefficient')
a = gca;
a.FontSize = 16;

