function iDoor = getDoorId(time, sampleTime, recurrencePeriod, nDistances)
    iRecurrence = getRecurrenceId(time, recurrencePeriod)
    iDoor = uint16(floor(time / sampleTime - iRecurrence * double(nDistances)))
end