def title_case(title, minor_words="_")
   arr_1 = title.split
   arr_2 = minor_words.split
   arr_3 = []
   switch = false
    return p "" if arr_1.empty? 
    if arr_2.empty?
     arr_1.each { |a| p arr_3 << a.capitalize! } 
     return p arr_3.join(' ')
    else
     arr_1[0].capitalize!
     for i in 1..arr_1.size-1
       for j in  0..arr_2.size-1
         if arr_1[i].downcase == arr_2[j].downcase
            switch = true
               if switch == true
                 arr_1[i].downcase!
               end
          elsif switch == false
                 arr_1[i].capitalize!
          end
         end
        switch = false 
       end
     end
   return p arr_1.join(' ')
end

title_case('aBC deF Ghi')
title_case('aBC ghghhghg deF Ghi  _ destiny')

# Obviously !
# def title_case(title, minor_words = '')
#   title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
# end

