def race(v1, v2, g)
	return nil if v1>=v2

    arr = []
    s = g.fdiv(v2-v1)
 	time = s*3600
 	
 	hour = time.fdiv(3600)
	arr << hour.to_i

	min = time.fdiv(60)%60 # Cleaner version
	arr << min.to_i

  	sec = time%60
	arr << sec.to_i
	
	return print arr 
	
end

race(720, 850, 70)
race(80, 91, 37)
race(80, 100, 40)


