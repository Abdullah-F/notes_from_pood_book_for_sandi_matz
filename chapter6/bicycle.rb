class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args = {})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size

    post_initialize(args) # with this the subclasses will not need to depend on calling super(args)
    # Bicycle both sends
  end

  def post_initialize(args) # hook to decouple subclasses initialze method
    nil
  end # must be implmeneted by subclasses if they have speicialized constructor method

  def spares
    { tire_size: tire_size,
      chain: chain }.merge(local_spares)
  end

  def local_spares # hook that decouples subclasses
    {}
  end # must be implemented by sub classes if they have specialized spare method

  def default_chain
    "10-speed"
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end
