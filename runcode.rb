#comparable celestial bodies mass in M(Earth):
# Sun: 333,000; Mercury: 0.055; Venus: 0.815; Earth: 1; Moon: 0.0123; Mars: 0.107; Jupiter: 318; Saturn: 95.2; Uranus: 14.6; Neptune: 17.2; Pluto: 0.002.

require_relative("solar_system")

#creating bodies and populating "bodies" array
ar_bodies = []
sun = Star.create("Sun", 333000, "G-type")
ar_bodies << sun
earth = Planet.new("Earth", 1, 24, 365.25)
ar_bodies << earth
moon = Moon.new("Moon", 0.0123, "Earth", 29.5)
ar_bodies << moon
puts ar_bodies.inspect

#creating the Solar system instance
solar_system = System.create("Solar",ar_bodies)
puts solar_system.all.inspect

#calculating the mass of the instance
solar_system.total_mass

#adding a new planet
mars = Planet.new("Mars", 0.107, 24.66, 687)
solar_system.add(mars)
puts solar_system.all.inspect

solar_system.total_mass
