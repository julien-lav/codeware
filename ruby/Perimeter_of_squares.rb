def perimeter(n)
  arr = [0,1,1]
  for i in (3..n+1) do 
     arr << (arr[i-1] + arr[i-2])
     i += 1
  end
  return 4 * (arr.reduce(:+))
end
