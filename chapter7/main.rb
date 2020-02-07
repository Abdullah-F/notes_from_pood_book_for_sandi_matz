require("./bicycle.rb")
require "date"
require("./mechanic.rb")
require("./vehicle.rb")

starting = Date.parse("2015/09/04")
ending = Date.parse("2015/09/10")
b = Bicycle.new
b.schedulable?(starting, ending)

v = Vehicle.new
v.schedulable?(starting, ending)
m = Mechanic.new
m.schedulable?(starting, ending)
