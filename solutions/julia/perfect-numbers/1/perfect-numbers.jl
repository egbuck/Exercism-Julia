
function isperfect(n)
    if n < 1
        throw(DomainError("Input must be a natural number greater than zero."))
    end
    sum = 0
    for i in 1:(n-1)
        if n % i == 0
            sum += i
        end
    end
    return sum == n
end

function isabundant(n)
    if n < 1
        throw(DomainError("Input must be a natural number greater than zero."))
    end
    sum = 0
    for i in 1:(n-1)
        if n % i == 0
            sum += i
        end
    end
    return sum > n
end

function isdeficient(n)
    if n < 1
        throw(DomainError("Input must be a natural number greater than zero."))
    end
    sum = 0
    for i in 1:(n-1)
        if n % i == 0
            sum += i
        end
    end
    return sum < n
end