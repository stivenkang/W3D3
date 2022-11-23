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
    sequence = [0, 1]

    sequence += fib_recursive(n - 1)[-1] + fib_recursive(n - 2)[-1]
    sequence
    # 3: [0, 1, 1]
    # 4: [0, 1, 1, 2]

end
p fib_recursive(3)
