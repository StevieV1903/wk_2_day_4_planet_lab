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

  # def get_largest_planet()
  #   planet_size =[]
  #   @planets.each { |planet| planet_size.push(planet.diameter)}
  #   index_position = planet_size.index(planet_size.max)
  #   return @planets[index_position]
  # end

  def get_largest_planet()
    largest_planet = @planets.max {|bigger_planet, planet| bigger_planet.diameter <=> planet.diameter}
    return largest_planet
  end

  def get_smallest_planet()
    smallest_planet = @planets.min {|smaller_planet, planet| smaller_planet.diameter <=> planet.diameter}
    return smallest_planet
  end

  def get_planets_with_no_moons()
    planets_with_no_moons = @planets.find_all {|planet| planet.number_of_moons == 0}
    return planets_with_no_moons
  end

  def get_planets_with_more_moons(number_of_moons)
    planets_with_x_moons = @planets.find_all {|planet| planet.number_of_moons > number_of_moons}
    planets_with_x_moons_name = []
    planets_with_x_moons.each{|planet| planets_with_x_moons_name.push(planet.name)}
    return planets_with_x_moons_name
  end

  def get_number_of_planets_closer_than(chosen_distance)
    planets_within_chosen_distance = @planets.find_all {|planet| planet.distance_from_sun < chosen_distance}
    return planets_within_chosen_distance.length
  end










end
