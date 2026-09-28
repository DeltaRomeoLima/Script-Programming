% Dovydas Radžiūnas EIf-25
% 2026-09-28
% 3 laboratorinis darbas, 11 variantas

%% PRIVALOMA UŽDUOTIS
%% 1. Dvimatis grafikų vaizdavimas
clear
close all

x1 = 0:0.5:2*pi;
f1 = sin(x1) + cos(x1).^2;

figure(1)
plot(x1, f1, 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y')
axis([min(x1) max(x1) min(f1) max(f1)])
title('f(x) = sin(x) + cos^2(x)')
xlabel('x')
ylabel('f(x)')
legend(["sin(x) + cos^2(x)"], "Position", [0.1430 0.1437 0.1109, 0.0354])
grid on

x2 = 0:0.01:1.2;
y1 = x2.^exp(1);
y2 = x2.^(2*exp(1));
y3 = x2.^(3*exp(1));

figure(2)
plot(x2, y1, x2, y2, x2, y3)
axis([min(x2) max(x2) min([y1 y2 y3]) max([y1 y2 y3])])
title('f(x) = x^e, x^{2e}, x^{3e}')
xlabel('x')
ylabel('f(x)')
legend('x^e', 'x^{2e}', 'x^{3e}', 'Location', 'northwest')
grid on

%% 2. Specializuotų grafikų kūrimas
x3 = linspace(-2*pi, 2*pi, 32);
y = x3.^3 + sin(x3);

figure(3)
subplot(1,2,1)
quiver(x3, zeros(size(x3)), zeros(size(x3)), y)
title('y(x) = x^3 + sin(x) vektoriais')
xlabel('x')
ylabel('y')

subplot(1,2,2)
bar(x3, y)
title('y(x) = x^3 + sin(x) stulpeline diagrama')
xlabel('x')
ylabel('y')

%% PAPILDOMA UŽDUOTIS
A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;
t = 0:0.001:1.5;
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = sigma * randn(size(t));
sn = s + n;
sf = sn;
sf(abs(sf) < U2) = 0;

figure(4)
subplot(2,1,1)
plot(t, sn, 'g-.')
hold on
plot(t, sf, 'k-')
plot([t(1) t(end)], [U1 U1], 'b--', 'LineWidth', 1)
plot([t(1) t(end)], [U2 U2], 'r')
plot([t(1) t(end)], [-U2 -U2], 'r')
hold off
axis([min(t) max(t) min(sn) max(sn)])
title('Pradinis ir filtruotas signalai')
xlabel('t, s')
ylabel('U, V')
legend('Pradinis', 'Filtruotas', 'U_1', 'U_2', '-U_2', 'Location', 'southwest')
grid on

virs = sn > U1;
tv = t(virs);
sv = sn(virs);
maks = sv == max(sv);
mini = sv == min(sv);

subplot(2,1,2)
stem(tv, sv)
hold on
plot(tv(mini), sv(mini), 'ko', 'MarkerSize', 10, 'LineWidth', 2)
plot(tv(maks), sv(maks), 'r^', 'MarkerFaceColor', 'r', 'MarkerSize', 10)
hold off
axis([min(t) max(t) 0 1.1*max(sv)])
title('Pradinio signalo reikšmės, viršijančios U_1')
xlabel('t, s')
ylabel('U, V')
legend('sn > U_1', 'Minimumas', 'Maksimumas', 'Location', 'southwest')
grid on