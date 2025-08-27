function collatz_steps(N, count=0)
    if N <= 0
        throw(DomainError("Input must be a positive integer"))
    elseif N == 1
        return count
    elseif N % 2 == 0
        return collatz_steps(N ÷ 2, count + 1)
    else
        return collatz_steps(3N + 1, count + 1)
    end
end