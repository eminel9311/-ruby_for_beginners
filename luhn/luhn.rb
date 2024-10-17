module Luhn
  # Version 2
  def self.valid?(str)
    # Remove space
    cleaned_str = str.gsub(/\s+/, '')
    return false if cleaned_str.length <= 1 || !only_numbers_with_spaces?(str)

    sum = 0
    cleaned_str.reverse.chars.each_with_index do |char, index|
      num = char.to_i
      num *= 2 if index.odd?
      sum += (num > 9 ? num - 9 : num)
    end

    sum % 10 == 0
  end

  def self.only_numbers_with_spaces?(str)
    str.match?(/\A\d+(\s\d+)*\z/)
  end
end
