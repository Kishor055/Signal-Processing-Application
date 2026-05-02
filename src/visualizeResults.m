function visualizeResults(cleanSignal, noisySignal, filteredSignal, Fs)

    t = (0:length(cleanSignal)-1)/Fs;

    figure('Name','Noise Reduction Analysis');

    subplot(3,1,1);
    plot(t, cleanSignal);
    title('Original Clean Signal');
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;

    subplot(3,1,2);
    plot(t, noisySignal);
    title('Noisy Signal');
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;

    subplot(3,1,3);
    plot(t, filteredSignal);
    title('Filtered Signal');
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;

    figure('Name','Spectrogram Comparison');

    spectrogram(noisySignal,256,250,256,Fs,'yaxis');
    title('Noisy Signal Spectrogram');

    figure;
    spectrogram(filteredSignal,256,250,256,Fs,'yaxis');
    title('Filtered Signal Spectrogram');
end
