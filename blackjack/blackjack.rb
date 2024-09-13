module Blackjack
  # A hash mapping card names to their corresponding numerical values.
  CARD_VALUES = { 'ace' => 11, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10, 'jack' => 10, 'queen' => 10, 'king' => 10 }.freeze

  # A hash defining the possible actions and their corresponding codes.
  RESULTS = { stand: "S", hit: "H", split: "P", automatically_win: "W" }.freeze

  # A hash mapping score ranges to their string representations.
  SCORE_RANGES = { low: 'low', mid: 'mid', high: 'high', blackjack: 'blackjack', out_of_range: 'out_of_range' }.freeze

  # Converts a card name to its corresponding numerical value.
  # @param card [String] The name of the card (e.g., 'ace', 'five').
  # @return [Integer] The numerical value of the card. Returns 0 if the card is not recognized.
  def self.parse_card(card)
    CARD_VALUES.fetch(card, 0)
  end

  # Determines the range category of the combined score of two cards.
  # @param card1 [String] The name of the first card.
  # @param card2 [String] The name of the second card.
  # @return [String] The range category of the combined score (e.g., 'low', 'mid').
  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    categorize_score(score)
  end

  # Decides the appropriate action for the first turn based on the player's card range and the dealer's card.
  # @param card1 [String] The name of the first card.
  # @param card2 [String] The name of the second card.
  # @param dealer_card [String] The name of the dealer's card.
  # @return [String] The recommended action based on the player's card range and dealer's card.
  def self.first_turn(card1, card2, dealer_card)
    player_card_range = card_range(card1, card2)
    dealer_card_value = parse_card(dealer_card)
  
    result = case player_card_range
             when SCORE_RANGES[:out_of_range] then RESULTS[:split]
             when SCORE_RANGES[:blackjack] then dealer_card_value < 10 ? RESULTS[:automatically_win] : RESULTS[:stand]
             when SCORE_RANGES[:high] then RESULTS[:stand]
             when SCORE_RANGES[:mid] then dealer_card_value < 7 ? RESULTS[:stand] : RESULTS[:hit]
             when SCORE_RANGES[:low] then RESULTS[:hit]
             end
  
    result
  end

  # Categorizes a score into one of the predefined score ranges.
  # @param score [Integer] The score to categorize.
  # @return [String] The category of the score (e.g., 'low', 'mid').
  def self.categorize_score(score)
    case score
    when 4..11 then SCORE_RANGES[:low]
    when 12..16 then SCORE_RANGES[:mid]
    when 17..20 then SCORE_RANGES[:high]
    when 21 then SCORE_RANGES[:blackjack]
    else SCORE_RANGES[:out_of_range]
    end
  end
  
end
