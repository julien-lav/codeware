def reverse_by_center(s)
	if s.length % 2 == 0
		start = s[0, s.length/2]
		finish = s[s.length/2, s.length]
	 	return puts finish + start 
	else
		start = s[0, s.length/2]
		middle = s[s.length/2]
	 	finish = s[s.length/2+1, s.length]
		return puts finish + middle + start 
	end
end

reverse_by_center("secret")
reverse_by_center("agent")
reverse_by_center("abcdefghijklmnopxyz")

#Do you speak retsec?

