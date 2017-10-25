%% Definition de l'environnement Hardware
MHz = 1.0E+06;
fpgaClock = 250 * MHz;
oversamplingFactor = 20; % FPGA_clk * SampleTime
sampleTime = oversamplingFactor / fpgaClock;

%% Definition des Quantifications

nbitsSample = 24;   % bits complex
fbitsSample = 22;    % bits fractionnaires
sbitsSample = 1;    % signé
DTsample    = numerictype(sbitsSample,nbitsSample, fbitsSample);

nbitsCoeff  = 16;   % bits complex
fbitsCoeff  = 15;   % bits fractionnaires
sbitsCoeff  = 1;    % signé
DTCoeff     = numerictype(sbitsCoeff,nbitsCoeff, fbitsCoeff);

nbitsPhaseIncrement  = 16;   % bits complex
fbitsPhaseIncrement  = 20;   % bits fractionnaires
sbitsPhaseIncrement  = 0;    % signé
DTPhaseIncrement    = numerictype(sbitsPhaseIncrement, nbitsPhaseIncrement, fbitsPhaseIncrement);

%% Paramètres du code
nFilters   = 201; 
    DTnFilters = numerictype(0, ceil(log2(nFilters+1)), 0); % Ajout PNO
nDistances = 45;
nRecurrencesMax = 1000;
offsetsExposant= (0:oversamplingFactor:(nFilters - 1)/2); % Ajout PNO
sizeRAMs = oversamplingFactor; % Ajout PNO

%% Genération des signaux de test
nRecurrences   = 400;
phaseIncrement = 2*pi / nRecurrences;
nSamples       = nRecurrences * nDistances;
times          = (0:nSamples - 1) * sampleTime;
currentSamples = timeseries(fi(getSamples(nRecurrences, nDistances), DTsample), times);
syncRecurrence = timeseries(logical(getSyncRecurrence(nRecurrences, nDistances)), times);
syncAnalysis   = timeseries(logical(getSyncAnalysis(nRecurrences, nDistances)), times);


nAnalysis = 3;
simulationTime = max(times) * nAnalysis;






