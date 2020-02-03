class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel = nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    wheel.diameter * ratio
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize rim, tire
    @rim = rim
    @tire = tire
  end

  def diameter
    rim+(2*tire)
  end

  def circumference
    diameter * Math::PI
  end
end

puts Wheel.new(26, 1.5).circumference
puts Gear.new(52,11, Wheel.new(26, 1.5)).gear_inches