# module Raindrops
#   # Version 2
#   RULES = {
#     105 => "PlingPlangPlong",
#     35 => "PlangPlong",
#     21 => "PlingPlong",
#     15 => "PlingPlang",
#     3 => "Pling",
#     5 => "Plang",
#     7 => "Plong"
#   }.freeze

#   def self.convert(num)
#     result = RULES.each_with_object('') do |(key, sound), res|
#       res << sound if num % key == 0
#     end
#     result.empty? ? num.to_s : result
#   end  
# end

module Raindrops
  # Version 3
  SOUNDS = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }.freeze

  def self.convert(num)
    result = SOUNDS.map {|key, sound| sound if num % key == 0 }.join
    result.empty? ? num.to_s : result
  end
end