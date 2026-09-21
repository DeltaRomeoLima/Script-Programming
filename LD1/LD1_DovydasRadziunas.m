% Dovydas Radžiūnas EIf-25
% 2026-09-14

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_w [-x-]')

%% 
N = 5;
vek = N+1:0.5:N+4

A = [N N+1 N+3; N+4 N+5 N+6; N+7 N+8 N+9]

A(3,2)
A([2 3], [1 2])
A([1 3], [1 3])

mod_vek = vek(1:3);
A_vek = [A; mod_vek]