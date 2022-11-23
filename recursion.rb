# def range(start, stop)
#     return [] if stop < start
#     return [start] if stop - 1 == start
#     arr = []
#     arr += range(start, stop - 1) + [stop - 1]
#     return arr
# end

def range(start, stop)
    sum = 0
    (start...stop).each do |num|
        sum += num
    end
    sum
end

p range(1, 5)