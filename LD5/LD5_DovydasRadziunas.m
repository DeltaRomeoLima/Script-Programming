% Dovydas Radžiūnas EIf-25
% 2026-10-12
% 5 laboratorinis darbas, 16 variantas

%% PRIVALOMA UŽDUOTIS
%% 1 Struktūros
clear
close all
clc

x = 0:0.001:2;
signalas.f = cos(sin(2*pi*x));
signalas.x = x;
signalas.pavadinimas = 'f(x) = cos(sin(2\pix))';

signalas

figure(1)
plot(signalas.x, signalas.f)
title(signalas.pavadinimas)
xlabel('x')
ylabel('f(x)')
grid on

%% 2 Srauto valdymo konstruktoriai
A = round(10 * rand + 1);
spejimas = input('Atspekite skaiciu nuo 1 iki 11: ');

while spejimas ~= A
    if spejimas < A
        disp('skaicius per mazas')
    else
        disp('skaicius per didelis')
    end
    spejimas = input('Bandykite dar karta: ');
end

disp('Atspejote!')

%% PAPILDOMA UŽDUOTIS
sk1 = [];
sk2 = [];

while true
    a = round(rand*6);
    b = round(rand*8);
    sk1(end+1) = a;
    sk2(end+1) = b;
    if a == b
        break
    end
end

disp(['Sugeneruota kartu: ' num2str(length(sk1))])

figure(2)
plot(1:length(sk1), sk1, '-o', 1:length(sk2), sk2, '-s')
title('Sugeneruotu skaiciu kitimas')
xlabel('Generavimo nr.')
ylabel('Skaicius')
legend('round(rand*6)', 'round(rand*8)')
grid on