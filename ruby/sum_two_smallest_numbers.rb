def sum_two_smallest_numbers(numbers)
	return p numbers.sort[0] + numbers.sort[1]
end

# numbers.min(2).reduce(:+)
sum_two_smallest_numbers([10,9,8,7,6,5,3,20,100])