function filteredSignal = adaptiveNoiseCancellation(noisySignal, noiseRef, filterLength, stepSize)

    lms = dsp.LMSFilter( ...
        'Length', filterLength, ...
        'StepSize', stepSize);

    [~, errorSignal] = lms(noiseRef, noisySignal);

    filteredSignal = errorSignal;
end
