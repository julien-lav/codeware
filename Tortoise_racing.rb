def race(v1, v2, g)
    arr = []
    s = g.fdiv(v2-v1)
 	time = s*3600
 	
 	hour = time.fdiv(3600)
	arr << hour.to_i

	min = (g % (v2-v1)) * 60 / (v2-v1)
	arr << min.to_i

  	sec = time%60
	arr << sec.to_i
	
	if v1 >= v2 
	 return nil
	else 
	 return arr 
	end
	
end

race(720, 850, 70)
race(80, 91, 37)
race(80, 100, 40)

