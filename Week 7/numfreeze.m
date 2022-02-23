function numfreeze = freezing(A)
get = A(A<32)
numfreeze = sum(logical(get))
end
