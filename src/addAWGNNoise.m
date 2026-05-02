function [noisySignal, noise] = addAWGNNoise(signal, snrValue)
% Adds white Gaussian noise to signal

    noisySignal = awgn(signal, snrValue, 'measured');
    noise = noisySignal - signal;
end
