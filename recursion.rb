# def range(start, stop)
#     return [] if stop < start
#     return [start] if stop - 1 == start
#     arr = []
#     arr += range(start, stop - 1) + [stop - 1]
#     return arr
# end

def sum(arr)
    sum = 0
    (arr).each do |num|
        sum += num
    end
    sum
end

def recursive_sum(arr)
    return 0 if arr.empty?
    return arr[0] if arr.length == 1
    arr[0] + recursive_sum(arr[1..-1])
end

def exp_1(b, n)  # b^n
    return 1 if n == 0
    b * exp_1(b, n - 1)
end

def exp_2(b, n)
    return 1 if n == 0
    return b if n == 1
    if n % 2 == 0
        return exp_2(b, n/2) * exp_2(b, n/2)
    else
        return b * (exp_2(b, (n - 1)/2) * exp_2(b, (n - 1)/2))
    end
end

# p exp_2(2,5)