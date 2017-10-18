function samples = getSamples(nRecurrences, nDistances)
    nSamples    = nRecurrences * nDistances ;
    samples = complex(zeros(nSamples, 1));
    for iRecurrence = 1:nRecurrences
        for iDistance = 1:nDistances
            iSample = iDistance + (iRecurrence - 1) * nDistances;
            samples(iSample) = exp(-2j * pi *iDistance * iRecurrence / nRecurrences);
        end
    end
end
