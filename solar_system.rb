# we'll need a class to represent the solar system. Let's call it System, and give it an attribute bodies.
# bodies will start as an empty array (ie. []).

require "pry"



class System



  def initialize(name, bodies)
    @@bodies = []
    @name = name
    @@bodies = bodies
  end

  def self.create(name, bodies)
    new_system = System.new(name, bodies)
    # bodies = [sun, earth, moon]
    @@bodies = bodies
    return new_system
  end

  # reader
  def all
    return @@bodies
  end

  def add(body)
    puts "Adding a new body"
# binding.pry
    @@bodies << body
  end

  def total_mass
    total = @@bodies.inject(0){|sum,element| sum + element.mass }
    puts "Total mass of Solar system's bodies is now #{total} of Earth's mass."
    #loop alternative
    # total = 0
    # @@bodies.each do |element|
    #   total += element.mass
    # end
    # puts "Total mass of Solar system's bodies is now #{total} of Earth's mass."
    # return total
  end

end

class Body < System

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

  def self.create(name, mass, type)
    new_star = Star.new(name, mass, type)
  end

  def mass
    return @mass
  end

end

class Planet < Body

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

  def self.create
    new_planet = Planet.new(day, year)
  end

  def mass
    return @mass
  end

end

class Moon < Body

  def initialize(name, mass, planet, month)
    super(name, mass)
    @planet = planet
    @month = month
  end

  def self.create
    new_moon = Moon.new(planet, month)
  end

  def mass
    return @mass
  end

end
