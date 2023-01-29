% Charger le signal ECG traité ou non traité
ecg_signal = load('ecg2.mat');

% Définir l'intervalle de recherche pour la fréquence cardiaque
min_hr = 40; % battements par minute
max_hr = 220; % battements par minute

% Calculer l'autocorrélation du signal ECG
[acf,lags] = xcorr(ecg_signal,ecg_signal);

% Trouver la fréquence cardiaque en se basant sur l'autocorrélation
[max_corr, max_index] = max(acf);
heart_rate = 60*fs/(lags(max_index));

% Vérifier si la fréquence cardiaque est dans l'intervalle de recherche
if heart_rate > min_hr && heart_rate < max_hr
    disp(['Fréquence cardiaque : ', num2str(heart_rate), ' battements par minute']);
else
    disp('Fréquence cardiaque non détectée');
end