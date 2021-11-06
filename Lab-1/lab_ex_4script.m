% Script to determine the value of resistance for specified 
% Overshoot percentage, inductance and capacitance value.

%Initializing the values for L and C:
L = 12.5;
C = 0.5;
OS = 20;
syms R;
%%
%Getting the damping ratio:
sigma = R/(2*L);
W = 1/(sqrt(L*C));
eta = sigma/W;
%%
%Expression for %-Overshoot:
eq = exp(-pi*(eta/sqrt(1-(eta^2)))) == OS/100;
Roots = eval(solve(eq))