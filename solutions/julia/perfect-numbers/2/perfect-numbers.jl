function aliquout_factors(n::Integer) :: Array{Integer,1}
    # Invalid inputs
    n < 1 && throw(DomainError(n))
    # Edge cases
    n == 1 && return []
    n == 2 && return [1]
    # Find factors
    factors = [x for x in range(2, stop = ceil(sqrt(n))) if n % x == 0]
    return sort(
        unique(
            cat(
                dims = 1,
                [1,],
                factors,
                [n ÷ x for x in factors]
            )
        )
    )
end

function aliquout_sum(n::Integer) :: Integer
    return sum(aliquout_factors(n))
end

isperfect(x)::Bool = x == sum(aliquout_sum(x))
isabundant(x)::Bool = x < sum(aliquout_sum(x))
isdeficient(x)::Bool = x > sum(aliquout_sum(x))