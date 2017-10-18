function iDistance = getDistanceId(iSample, nDistances)
    iRecurrence = getRecurrenceId2(iSample, nDistances)
    iDistance = iSample - iRecurrence * nDistances
end