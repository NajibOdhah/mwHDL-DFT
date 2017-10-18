function baseFourierSubset = getBaseFourierSubset(nDimensions, iFilter, nFilters)
    baseFourierSubset    = complex(zeros(nFilters, 1))
    nthRootOfUnity   = exp(-2i * pi / nDimensions)
    baseFourierSubset(1) = exp(-2i * pi * iFilter / nDimensions)
    for iElement = 2:nFilters
        baseFourierSubset(iElement) = baseFourierSubset(iElement - 1) * nthRootOfUnity
    end
end