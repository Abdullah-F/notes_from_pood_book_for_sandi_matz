class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args = {})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size

    post_initialize(args)
    # Bicycle both sends
  end

  def post_initialize(args) # and implements this
    nil
  end

  def spares
    { tire_size: tire_size,
      chain: chain }.merge(local_spares)
  end

  def local_spares
    {}
  end

  def default_chain
    "10-speed"
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end

class RoadBike < Bicycle
  # ...
  def default_tire_size
    "23"
  end

  def post_initialize(args)
    # RoadBike can
    @tape_color = args[:tape_color] # optionally
  end

  def local_spares
    { tape_color: tape_color }
  end
end
