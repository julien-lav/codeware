def solution(number)
  i = 0; arr_i = []
  j = 0; arr_j = []
  k = 0; arr_k = []
  (1..number-1).to_a.each { |num| if num%3==0; arr_i<<(i+=3); end; if num%5==0; arr_j<<(j+=5); end;if num%3==0 && num%5==0; arr_k<<(i
  	k+=15); end;}
 
  result_1 = (arr_i + arr_j).reduce(:+).to_i
  result_2 = arr_k.reduce(:+).to_i
  result = result_1 - result_2
  puts result
end

solution(20)

=begin
#obviously better

def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end
=end