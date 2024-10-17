class Clock
  def initialize(input = {})
    @minutes = input.fetch(:minute, 0)
    @hours = input.fetch(:hour, 0)
    normalize_time
  end

  def normalize_time
    @hours += @minutes / 60
    @minutes %= 60
    @hours %= 24
    @hours += 24 if @hours < 0
  end

  def to_s
    "%02d:%02d" % [@hours, @minutes]
  end

  def +(other)
    @minutes += other.minutes
    @hours += other.hours
    normalize_time
    self
  end

  def -(other)
    @minutes -= other.minutes
    @hours -= other.hours
    normalize_time
    self
  end

  def ==(other)
    @hours == other.hours && @minutes == other.minutes
  end

  protected

  attr_reader :minutes, :hours
end
