def backwardsPrime(start, stop)
	arr = []
	while start < stop 
		start = start + 1

		if ((start%2!=0  && start%3!=0 && start%5!=0 && start%7!=0) && (start.to_s.reverse.to_i%2!=0  && start.to_s.reverse.to_i%3!=0 && start.to_s.reverse.to_i%5!=0 && start.to_s.reverse.to_i%7!=0))
			arr << start
		end
	end
	return print arr
end

backwardsPrime(9900, 10000)



#Correction 
require "set"

def backwardsPrime(start, stop)
  primes = sieve(stop).drop_while{ |i| i < start }.to_set
  primes.select{ |a| b = a.to_s.chars.reverse.join.to_i; prime?(b) && a != b }
end

def sieve(n)
  potential = [false, false, *[true] * (n - 1)]
  (2..Math.sqrt(n)).each do |i|
    ((i**2 .. n).step(i)).each do |j|
      potential[j] = false
    end
  end
  potential.map.with_index.reduce([]) { |acc, (t, i)| t ? acc << i : acc }
end

def prime?(n)
  (2..Math.sqrt(n).ceil).each do |i|
    return false if n % i == 0
  end

  true
end