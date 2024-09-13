module Blackjack
  CARD_VALUES = {
    'ace' => 11,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9,
    'ten' => 10,
    'jack' => 10,
    'queen' => 10,
    'king' => 10
  }.freeze

  def self.parse_card(card)
   CARD_VALUES.fetch(card, 0)
  end

  def self.card_range(card1, card2)
    categorize_score(parse_card(card1) + parse_card(card2))
  end

  def self.first_turn(card1, card2, dealer_card)
    card_range = card_range(card1, card2)
    dealer_card_value = parse_card(dealer_card)
    
     case card_range
      when 'out_of_range'
        "P"
      when 'blackjack'
        dealer_card_value < 10 ? "W" : "S"
      when 'high'
        "S"
      when 'mid'
        dealer_card_value < 7 ? "S" : "H"
      when 'low'
        "H"
      end
  end

  def self.categorize_score(score)
    case score
      when 4..11 then 'low'
      when 12..16 then 'mid'
      when 17..20 then 'high'
      when 21 then 'blackjack'
    else 'out_of_range'
    end
  end
end
