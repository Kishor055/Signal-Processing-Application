function results = computeMetrics(cleanSignal, noisySignal, filteredSignal)

    noiseBefore = cleanSignal - noisySignal;
    noiseAfter = cleanSignal - filteredSignal;

    snrBefore = 10 * log10(sum(cleanSignal.^2) / sum(noiseBefore.^2));
    snrAfter = 10 * log10(sum(cleanSignal.^2) / sum(noiseAfter.^2));

    improvement = ((snrAfter - snrBefore) / abs(snrBefore)) * 100;

    results.snrBefore = snrBefore;
    results.snrAfter = snrAfter;
    results.improvement = improvement;
end
