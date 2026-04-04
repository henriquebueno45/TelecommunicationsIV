%% Laboratório 3 - Modulação LORA
% Alunos: Dener Kraus, Henrique Bueno e Lucas Bueno

% Parte 1 - Variação de SF
sf1 = [7 8 9 10 11 12];
toA1 = [41.21 72.18 144.38 288.76 577.53 991.22]; % ms
Tsym1 = [1.02 2.05 4.10 8.19 16.38 32.77]; % ms
bitrate1 = [5.4687 3.125 1.7578 0.97656 0.5371 0.29296]; % kbps

overhead1 = ((n_pre + 4.25) .* Tsym1) ./ toA1 .* 100;

% Parte 2 - Variação de payload
sf2 = 9;
pl = [10 20 50 100 200];
toA2 = [164.86 205.82 390.14 676.86 1270]; % ms
Tsym2 = 4.10; % ms

overhead2 = ((n_pre + 4.25) .* Tsym2) ./ toA2 .* 100;

figure();
plot(sf1, toA1, '-o')
xlabel('SF')
ylabel('ToA (ms)')
grid on

figure();
plot(pl, overhead2, '-o')
xlabel('Payload (bytes)')
ylabel('Overhead (%)')
grid on