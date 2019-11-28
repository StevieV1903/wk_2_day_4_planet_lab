class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    planets_in_system =  @planets.map { |planet| planet.name}
    return planets_in_system
    end

    def get_planet_by_name(planet_name)
      found_planet = @planets.find { |planet| planet.name == planet_name}
      return found_planet
    end









end
