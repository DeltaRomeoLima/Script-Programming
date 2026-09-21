% Dovydas Radžiūnas EIf-25
% 2026-09-21
% 2 laboratorinis darbas, 13 variantas

%% PRIVALOMA UŽDUOTIS
%% 1. Vienmačiai masyvai

a = 10:-1:-15
b = log2(a)
c = a ./ b
d = c(:)

%% 2. Dvimačiai masyvai
Cm1 = pi/2 : pi/2 : 3*pi/2
Cm2 = -1:1
Cm3 = -3:-1:-5

C = [Cm1; Cm2; Cm3]

eil_sumos = sum(C, 2)

%% 3. Signalas su triukšmu
A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;
t = 0:0.001:1.5;
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = sigma * randn(size(t));

sn = s + n;

a_dalis = sn(sn > U1);

sf = sn;
sf(abs(sf) < U2) = 0;

nefiltr_dydis = length(sn)
a_dydis = length(a_dalis)

sf_max = max(sf)
sf_min = min(sf)

%% PAPILDOMA UŽDUOTIS
A = [0 1 0 2 3 0 4
     0 0 0 0 0 0 0
     0 5 0 6 7 0 8
     0 9 0 1 2 0 3
     0 0 0 0 0 0 0
     0 4 0 5 6 0 7];

eil  = any(A, 2)
stulp = any(A, 1)

B = A(eil, stulp)