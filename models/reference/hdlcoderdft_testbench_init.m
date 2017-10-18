% init du test bench
hdlcoderdft_init
MHz              = 1.0E+06
sampleFrequency  = 150 * MHz
sampleTime       = 1.0 / sampleFrequency
nRecurrences     = 4
analysisDuration = sampleTime * (nDistances * nRecurrences - 1)
recurrencePeriod = sampleTime * nDistances
startFilter      = 0
