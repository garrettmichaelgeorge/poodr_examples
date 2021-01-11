class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    # tire goes around rim twice for diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end
