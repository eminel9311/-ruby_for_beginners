class ResistorColorDuo
  COLOR_VALUES = { black: 0, brown: 1, red: 2, orange: 3, yellow: 4, green: 5, blue: 6, violet: 7, grey: 8, white: 9 }.freeze
  def self.value(colors)
    first_color, second_color, *others = colors
    COLOR_VALUES[first_color.to_sym] * 10 + COLOR_VALUES[second_color.to_sym]
  end
end