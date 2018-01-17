def list names
  names = names.map do | item | 
     item[:name]
  end
   number_of_names = names.count  
   my_string = names.to_s.gsub('"', '').sub('[', '').sub(']', '') 
  if number_of_names == 1
    return my_string.sub(',', '')
  elsif number_of_names == 2
    return my_string.sub(',', ' &')
  else 
    return p my_string.reverse.sub(',', '& ').reverse #Not my best move, but it's working
  end
end

list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
