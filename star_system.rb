class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

def planet_names()
  expected_names = @planets.map {|planet| planet.name}
  return expected_names
end

def get_planet_by_name(planet_name)
  planets.find {|planet| planet.name == planet_name}
end

def get_largest_planet
  planets.max_by {|planet| planet.diameter}
end

def get_smallest_planet
  planets.min_by {|planet| planet.diameter}
end

def get_planets_with_no_moons()
  expected_planets = planets.find_all {|planet| planet.number_of_moons == 0}
  return expected_planets
end

def get_planets_with_more_moons(number)
  planets_with_moons = planets.find_all {|planet| planet.number_of_moons > number}
    expected_names = planets_with_moons.map {|planet| planet.name}
  return expected_names
end

  def get_number_of_planets_closer_than(number)
    planets_close_to_sun = planets.find_all {|planet| planet.distance_from_sun < number}
    return planets_close_to_sun.count
  end

def get_total_number_of_moons()
  planets.reduce(0) {|total, planet| total + planet.number_of_moons}
end

def get_planet_names_sorted_by_increasing_distance_from_sun()
  planets_by_distance = planets.sort_by {|planet| planet.distance_from_sun}
   expected_names = planets_by_distance.map {|planet| planet.name}
  return expected_names
end

def get_planet_names_sorted_by_size_decreasing()
  planets_by_size = planets.sort_by {|planet| planet.diameter}.reverse!
   expected_names = planets_by_size.map {|planet| planet.name}
  return expected_names
end

end
