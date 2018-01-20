def array_plus_array(arr1, arr2)
value1 = 0
value2 = 0
  arr1.each { |value| value1 += value }
  p value1
  arr2.each { |value| value2 += value }
  return p value1 + value2
end

array_plus_array([1, 2, 3], [4, 5, 6])

=begin
(arr1 + arr2).reduce(:+)
(arr1 + arr2).inject(0, :+)
=end 