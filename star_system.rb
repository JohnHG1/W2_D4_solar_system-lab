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

def get_planets_with_more_than_four_moons()
  expected_planets = planets.find_all {|planet| planet.number_of_moons > 4}
  return expected_planets
end


end
