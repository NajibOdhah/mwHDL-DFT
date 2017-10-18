function signalArray = generateSignal(nRecurrences, nDistances)
    nSamples = nRecurrences * nDistances
    signalArray = complex(zeros(1, nSamples))
    for iRecurrence = 1:nRecurrences
        for iDistance = 1:nDistances
            iSample = iDistance + (iRecurrence - 1) * nDistances;
            signalArray(iSample) = exp(2 * j * pi * (iRecurrence - 1) * (iDistance - 1) / nRecurrences);
        end
    end
end