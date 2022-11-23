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

def deep_dup(arr)
    new_arr = []
    return new_arr += arr if arr.all? { |ele| !ele.is_a?(Array) }
    arr.each do |ele|
        new_arr << deep_dup(ele)
    end
    return new_arr
end

# arr = [
#     ["nuts", "bolts", "washers"],
#     ["capacitors", "resistors", "inductors"]
#   ]
# p deep_dup(arr)[1] << "leds"
# p arr

def fib_iterative(n)    # next = previous 2 added up
    return [0] if n == 1
    return [0, 1] if n == 2
    sequence = [0, 1]

    i = 1
    while i <= n
        sequence << sequence[i] + sequence[i - 1]
        i += 1
    end
    sequence[0...n]
end
# p fib_iterative(5)

def fib_recursive(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    fib_recursive(n-1) << fib_recursive(n - 1)[-1] + fib_recursive(n - 2)[-1]

    # 3: [0, 1, 1]
    # 4: [0, 1, 1, 2]
    # 5: [0, 1, 1, 2, 3]
end
# p fib_recursive(5)


def bsearch(arr, num)
    # return nil if !arr.include?(num)
    return nil if arr.length <= 0
    return arr.length / 2 if arr[arr.length / 2] == num
    return nil if arr.length == 1 && arr[0] != num

    if num < arr[arr.length / 2]
        return bsearch(arr[0...arr.length / 2], num)
    else
        return (arr.length / 2) + bsearch(arr[arr.length / 2..-1], num)
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil