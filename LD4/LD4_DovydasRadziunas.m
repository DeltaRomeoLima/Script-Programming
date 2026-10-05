% Dovydas Radžiūnas EIf-25
% 2026-10-05
% 4 laboratorinis darbas, 8 variantas

%% PRIVALOMA UŽDUOTIS
%% 1a
clear
close all

[x, y] = meshgrid(-2:0.1:2);
f = sin(abs(x + y)/20) .* exp(-abs(x + y));

figure(1)
h1 = surf(x, y, f);
colormap(hot)
shading interp
rotate(h1, [0 0 1], 90)
title('f(x,y) = sin(|x+y|/20) \cdot e^{-|x+y|}')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
grid on

%% 1b
[r, t] = meshgrid(0:0.05:1, 0:pi/40:2*pi);
x2 = r .* cos(t);
y2 = r .* sin(t);
f2 = 1 - 2*x2.^2 - 3*y2.^2;

figure(2)
h2 = surf(x2, y2, f2);
colormap(cool)
shading flat
rotate(h2, [0 0 1], 45)
title('f(x,y) = 1 - 2x^2 - 3y^2')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
grid on