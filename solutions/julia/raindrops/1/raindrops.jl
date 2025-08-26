function raindrops(number)
    result = ""
    div_by_3 = divisible_by(number, 3)
    div_by_5 = divisible_by(number, 5)
    div_by_7 = divisible_by(number, 7)
    if div_by_3
        result *= "Pling"
    end
    if div_by_5
        result *= "Plang"
    end
    if div_by_7
        result *= "Plong"
    end
    if !(div_by_3 || div_by_5 || div_by_7)
        result = string(number)
    end
    return result
end

function divisible_by(number, factor)
    return (number % factor) == 0
end