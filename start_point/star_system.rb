class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    planets_in_system =  @planets.map{ |planet| planet.name}
    return planets_in_system
    end









end
