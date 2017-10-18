function syncAnalysis = getSyncAnalysis(nRecurrences, nDistances)
    nSamples        = nRecurrences * nDistances;
    syncAnalysis    = false(nSamples, 1);
    syncAnalysis(1) = true;
end
