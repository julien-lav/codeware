def bouncingBall(h, bounce, window)
	$result = h
	$count  = 1
    return -1 if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h
	while ($result >= window)  do
	   $result = ($result * bounce)
	   #puts $result
	   $count += 2
	end
	return p $count-2 #Boucle une fois de trop
end

bouncingBall(30, 0.66, 1.5)
