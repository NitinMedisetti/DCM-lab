%Initializing the values:
V = 10;
R = 1;
L = 1;
syms t;
%%
I = V/R;
i(t) = I*(1-(exp(-t)));
limits = [0,10];
fplot(i,limits);