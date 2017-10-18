function didRecurrenceChange = recurrenceChanged(iSample, nDistances)
    didRecurrenceChange = false
    if(getDistanceId(iSample, nDistances) == 0)
        didRecurrenceChange = true
    end
end