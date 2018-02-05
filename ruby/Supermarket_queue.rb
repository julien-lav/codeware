def queue_time(customers, n)
  count = 0
  if n == 1
    if customers.reduce(:+) === nil 
      return 0
    else 
      return customers.reduce(:+)
    end 
  elsif n >= customers.size
    return customers.max
  else

	tills = customers.slice(0, n)
	queue = customers.slice(n, customers.size-1)
	
	for i in (0..queue.size-1)
			while tills.min > 0 && queue[i] != nil
				  tills.map! { |value| value = value - 1 }
				  tills
			    count +=1
			end
		    tills[tills.index(tills.min)] = queue[i]
		i += 1
	end
 	return tills.max + count
  end 
end

queue_time([2,2,3,3,4,4], 2)

=begin 
def queue_time(customers, n)
  arr = Array.new(n, 0)
  customers.each { |customer| arr[arr.index(arr.min)] += customer }
  arr.max
end
=end