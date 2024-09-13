module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = Range.new(1, 8)
  FILES = Range.new('A', 'H')

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    "#{first_name[0..1].upcase}#{last_name[-2..-1].upcase}"
  end

  def self.move_message(first_name, last_name, square)
    valid_square?(square[-1].to_i, square[0].to_s) ? "#{nick_name(first_name, last_name)} moved to #{square}" : "#{nick_name(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
  end
end
