function score(x, y)
    radius = distance(x, y)
    if radius > 10
        return 0
    elseif 5 < radius <= 10
        return 1
    elseif 1 < radius <= 5
        return 5
    else
        return 10
    end
end

function distance(x, y)
    return sqrt(x^2 + y^2)
end