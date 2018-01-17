def divisors(n)
   a = n
   arr = []
 for n in 2..n-1 do
  if a % n == 0
    arr << n
  end
 end
 if arr == []
  return "#{n+1} is prime"
 else
  return p arr
 end
end

divisors(253)
