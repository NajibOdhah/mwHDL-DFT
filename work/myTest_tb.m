nRecurrenceVector = 200:1000;
testvector = 2*pi./nRecurrenceVector;

for i = 1 : length(testvector)
    y = myTest(testvector(i));
end