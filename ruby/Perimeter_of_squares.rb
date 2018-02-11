def perimeter(n)
  if n == 0 
  	return p 0
  elsif n == 1 
  	return p 1
  else
    arr = [0,1,1]
    for i in (3..n+1) do 
       arr << (arr[i-1] + arr[i-2])
       i += 1
    end
    return p 4 * (arr.reduce(:+))
  end
end

perimeter(0)
perimeter(1)
perimeter(5)
perimeter(7)
