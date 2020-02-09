require('./bicycle_improved.rb')
require('./parts_factory')
road_config = [['chain', ['tire_size', ['tape_color', '10-speed'], '23'], 'red']]
mountain_config = [['chain', ['tire_size', ['front_shock', ['rear_shock', '10-speed'], '2.1'], 'Manitou', false], 'Fox']]

road_bike = Bicycle.new( size: 'L',
		parts: PartsFactory.build(road_config))

puts road_bike.spares

mountain_bike =
Bicycle.new(
size: 'L',
parts: PartsFactory.build(mountain_config))

puts mountain_bike.spares

recumbent_config = [['chain', ['tire_size', ['flag', '9-speed'], '28'], 'tall and orange']]

recumbent_bike = Bicycle.new(
		size: 'L',
		parts: PartsFactory.build(recumbent_config))

puts recumbent_bike.spares
