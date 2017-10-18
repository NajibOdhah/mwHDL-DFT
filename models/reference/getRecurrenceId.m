function iRecurrence = getRecurrenceId(time, recurrencePeriod)
    iRecurrence = uint16(floor(time / recurrencePeriod))
end
