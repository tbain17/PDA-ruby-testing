### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  #no 'cards' array

  def checkforAce(card)
    #should be check_for_ace
    if card.value = 1
      #needs to be ===
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)
  # dif should be def, missing comma between card1 and card 2
  if card1.value > card2.value
    return card
    #missing 1 (card1)
  else
    return card2
  end
end
  #extra 'end'
end

def self.cards_total(cards)
  #don't need 'self'
  total
  #total not set to a value
  for card in cards
    total += card.value
    return "You have a total of" + total
    #should use string interpolation and be after the for
  end
end
#missing end
```
