module PackedIntegers

export pack, unpack

function pack!(Y, X::AbstractArray{UInt8}; n=1)
    if n == 1
        for i ∈ eachindex(Y)
            Y[i] = ((X[i*8-7] << 7) | (X[i*8-6] << 6) |
                    (X[i*8-5] << 5) | (X[i*8-4] << 4) |
                    (X[i*8-3] << 3) | (X[i*8-2] << 2) |
                    (X[i*8-1] << 1) | (X[i*8-0]))
        end
    elseif n == 2
        for i ∈ eachindex(Y)
            Y[i] = ((X[i*4-3] << 6) | (X[i*4-2] << 4) |
                    (X[i*4-1] << 2) | (X[i*4-0]))
        end
    elseif n == 4
        for i ∈ eachindex(Y)
            Y[i] = ((X[i*2-1] << 4) | (X[i*2]))
        end
    else
        throw(DomainError(n, "n ∉ {1, 2, 4}"))
    end
end

function pack(X::AbstractArray{UInt8}; n=1)
    Y = Array{eltype(X)}(undef, length(X) * n ÷ 8)
    pack!(Y, X; n=n)
    Y
end

function unpack!(Y, X::AbstractArray{UInt8}; n=1)
    if n == 1
        for i ∈ eachindex(X)
            for j ∈ 0:7
                Y[(i*8)-j] = (X[i] >> j) & 1
            end
        end
    elseif n == 2
        for i ∈ eachindex(X)
            Y[(i*4)-0] = (X[i] & 3)
            Y[(i*4)-1] = (X[i] & 12) >> 2
            Y[(i*4)-2] = (X[i] & 48) >> 4
            Y[(i*4)-3] = (X[i] & 192) >> 6
        end
    elseif n == 4
        for i ∈ eachindex(X)
            Y[(i*2)-0] = (X[i] & 15)
            Y[(i*2)-1] = (X[i] & 240) >> 4
        end
    else
        throw(DomainError(n, "n ∉ {1, 2, 4}"))
    end
end

function unpack(X::AbstractArray{UInt8}; n=1)
    Y = Array{eltype(X)}(undef, length(X) * 8 ÷ n)
    unpack!(Y, X; n=n)
    Y
end

function unpack(X::UInt8; n=1)
    unpack([X]; n=n)
end

end
