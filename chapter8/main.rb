require("./bicycle.rb")
require("./roadBikeParts.rb")
require("./mountainBikeParts.rb")

road_bike = Bicycle.new(
	size: 'L',
	parts: RoadBikeParts.new(tape_color: 'red'))

puts road_bike.size
puts road_bike.spares

mountain_bike = Bicycle.new(
	size: 'L',
	parts: MountainBikeParts.new(rear_shock: 'Fox'))

puts mountain_bike.size
puts mountain_bike.spares
