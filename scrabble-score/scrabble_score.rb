class Scrabble
  LETTER_SCORES = {
    %w(a e i o u l n s t r) => 1,
    %w(d g)                 => 2,
    %w(b c m p)             => 3,
    %w(f h v w y)           => 4,
    %w(k)                   => 5,
    %w(j x)                 => 8,
    %w(q z)                 => 10
  }.flat_map { |letters, score| letters.product([score]) }.to_h

  def initialize(words)
    @words = words.downcase
  end

  def score
    @words.chars.sum { |char| LETTER_SCORES[char] || 0 }
  end
end

