def check_the_bucket(bucket)
  bool = 0
  bucket.map { |item| if item == "gold"; bool += 1; end; }
  if bool != 0
    true
  else
    false
  end
end
# bucket.include? 'gold'
check_the_bucket(["stone", "stone", "stone", "stone", "stone"])
