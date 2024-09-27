class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

def self.modifier(num)
  return (num - 10) / 2
end

def initialize
  @strength = throw_dice
  @dexterity = throw_dice
  @constitution = throw_dice
  @intelligence = throw_dice 
  @wisdom = throw_dice
  @charisma = throw_dice
  @hitpoints = 10 + DndCharacter.modifier(@constitution)
end

private

def throw_dice
  throw_scores = Array.new(4) { rand(1..6) }
  dice_scores = throw_scores.max(3).sum
  
end
end