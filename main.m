clc;
clear;
close all;

%% Configuration
inputFile = 'input/input_audio.wav';
outputFile = 'output/filtered_audio.wav';

noiseLevel = 10;        % SNR in dB for added noise
filterLength = 64;      % Adaptive filter order
stepSize = 0.008;       % LMS learning rate

%% Load Audio
[cleanSignal, Fs] = audioread(inputFile);

% Convert stereo to mono if needed
if size(cleanSignal,2) > 1
    cleanSignal = mean(cleanSignal,2);
end

cleanSignal = cleanSignal(:);

fprintf('Audio loaded successfully.\n');
fprintf('Sampling Frequency: %d Hz\n', Fs);

%% Add Additive White Gaussian Noise
[noisySignal, noiseRef] = addAWGNNoise(cleanSignal, noiseLevel);

%% Apply Adaptive LMS Filter
filteredSignal = adaptiveNoiseCancellation( ...
    noisySignal, ...
    noiseRef, ...
    filterLength, ...
    stepSize);

%% Performance Metrics
results = computeMetrics(cleanSignal, noisySignal, filteredSignal);

fprintf('\n===== PERFORMANCE REPORT =====\n');
fprintf('Input SNR  : %.2f dB\n', results.snrBefore);
fprintf('Output SNR : %.2f dB\n', results.snrAfter);
fprintf('Improvement: %.2f %%\n', results.improvement);

%% Save Filtered Output
audiowrite(outputFile, filteredSignal, Fs);
fprintf('Filtered audio saved: %s\n', outputFile);

%% Visualization
visualizeResults(cleanSignal, noisySignal, filteredSignal, Fs);
