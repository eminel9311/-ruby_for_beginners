class AssemblyLine
  CAR_PER_HOURLY = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    CAR_PER_HOURLY * success_rate_value * @speed
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  private
  
  def success_rate_value
    case @speed
    when 1..4
      1
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    else
      "Error: range of speed is 1..10"
    end
  end
end
