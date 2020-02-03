require("./bicycle.rb")

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
