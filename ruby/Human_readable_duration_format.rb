def format_duration(seconds)
return "now" if seconds == 0
  years = (seconds/31536000).to_i
  seconds = (seconds-(31536000*years))
  days = (seconds/86400).to_i
  seconds = (seconds-(86400*days))
  h = (seconds/3600).to_i
  seconds = (seconds-(3600*h))
  min = (seconds/60).to_i
  seconds = (seconds-(60*min)).to_i

  characters = ""
  if years != 0
   characters += "#{years} year"
  end
  if years > 1
   characters += "s"
  end
  if years > 0 && days > 0
   characters += ", "
  end
  if days != 0
   characters += "#{days} day"
  end
  if days > 1
   characters += "s"
  end
  if days > 0 && h > 0
   characters += ", "
  end
  if h != 0
   characters += "#{h} hour"
  end
  if h > 1
   characters += "s"
  end
  if h > 0 && min > 0  && seconds != 0
   characters += ", "
  elsif h > 0 && min > 0 && seconds == 0
   characters += " and "
  end
  if min != 0
   characters += "#{min} minute"
  end
  if min > 1
   characters += "s"
  end  
  if min > 0 && seconds > 0
   characters += " and "
  end
  if seconds != 0
   characters += "#{seconds} second"
  end
  if seconds > 1
   characters += "s"
  end

  return p characters
end

=begin
def format_duration(total)
  if total == 0
    "now"
  else
    duration = {
      year:   total / (60 * 60 * 24 * 365),
      day:    total / (60 * 60 * 24) % 365,
      hour:   total / (60 * 60) % 24,
      minute: total / 60 % 60,
      second: total % 60
    }
  
    @output = []
  
    duration.each do |key, value|
      if value > 0
        @output << "#{value} #{key}"
        @output.last << "s" if value != 1
      end
    end
  
    @output.join(', ').gsub(/\,\s(?=\d+\s\w+$)/, " and ")
  end
end
=end
format_duration(87315161351351)
