def is_smallest_int(arr)
    current_min = arr[0]
    arr.each do |i|
        if i < current_min
            current_min = i
        end
    end
    return current_min
end

puts is_smallest_int([34, 2, 15, 88, 2])
puts is_smallest_int([34, -345, -1, 100])