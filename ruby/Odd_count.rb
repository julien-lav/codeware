def oddCount n 
  return p (n/2) #option .floor but here we have a natural ruby behaviour
end

oddCount(15023)

=begin
# First solution, too slow
def oddCount n 
  i = 0
  number = 0
  while i <= n do
  if i.odd? then number +=1 end
  i += 1 
  end 
  return p number -1
end
# Second solution, too slow too
def oddCount n 
	number = 0
	for i in 1..n
	if i.even? then number +=1 end
	end 
  	return p number
end
# Third solution, "failed to allocate memory" Raaah !
def oddCount n 
    return p (1..n).step(2).to_a.size - 1
end
# Fourth... atempt, still too slow
def oddCount n 
    return p (1..n).step(2).count - 1
end
=end
