function baseFourierSubset = getBaseFourierSubset(nRecurrences, nFilters)
    baseFourierSubset    = complex(zeros(floor((nFilters-1)/2), 1));
    nthRootOfUnity   = exp(-2i * pi / nRecurrences);
    baseFourierSubset(1) = complex(1);
    % baseFourierSubset(1) = exp(-2i * pi * iFilter / nDimensions)
    for iElement = 2:floor((nFilters-1)/2 + 1) % nFilters
        baseFourierSubset(iElement) = baseFourierSubset(iElement - 1) * nthRootOfUnity;
    end
end