function syncRecurrence = getSyncRecurrence(nRecurrences, nDistances)
    nSamples       = nRecurrences * nDistances;
    syncRecurrence = false(nSamples, 1);
    for iRecurrence = 1:nRecurrences
        iSample = (iRecurrence - 1) * nDistances + 1;
        syncRecurrence(iSample) = true;
    end
end
