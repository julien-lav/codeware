def movie(card, ticket, perc)
    a = 0
    b = card
    count = 0
    while b.ceil >= a.ceil do 
      count += 1
      a += ticket
      b += ticket*(perc**count)
    end 
    return p count
end
