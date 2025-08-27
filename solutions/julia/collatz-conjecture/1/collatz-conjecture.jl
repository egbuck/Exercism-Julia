function collatz_steps(N)
    if N <= 0
        throw(DomainError("Input must be a positive integer"))
    end
    steps = 0
    while N != 1
        if N % 2 == 0
            N = N ÷ 2
        else
            N = 3N + 1
        end
        steps += 1
    end
    return steps
end