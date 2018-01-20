def binary_array_to_number(arr)
    result = 0
    arr.reverse.each_with_index { |item, index| puts result += item*(2**(index))}
    return p result
end 

# Ok here what's probably best -> arr.join("").to_i(2)
binary_array_to_number([0,0,0,1])