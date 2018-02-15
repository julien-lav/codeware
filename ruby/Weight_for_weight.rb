def order_weight(strng)  
  arr = []; sum = []; fin = []; last = []
  strng.split(' ').map { |number| arr << number }
  arr.each { |number| sum << number.split('').map(&:to_i).reduce(:+) }
  for i in (0..sum.size-1) do 
    fin << [sum[i],arr[i]]
  end
    fin = fin.sort_by(&:last)
    fin = fin.sort_by(&:first)
    fin.collect {|ind| last << ind[1]}
    return p last.join(' ')
end
order_weight("103 123 4444 99 2000")

=begin
	#first idea -> 

	def order_weight(strng)	
	arr = []
	sum = []
	fin = []
	strng.split(' ').map { |number| arr << number }
	arr.each { |number| sum << number.split('').map(&:to_i).reduce(:+).to_s }
	p sum
  	p arr

  	p has = Hash[sum.zip(arr)] 
  	#
	p h = Hash[has.sort_by {|k,v| k.to_i }]
	h.each {|k,v| fin << v }
	return p fin.join(' ')
end

def order_weight(string)
  string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
end

=end

