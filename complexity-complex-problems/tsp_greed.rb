require_relative 'city_node'

def nearest_possible_neighbor(current_city)

  while !current_city.visited do
    puts "Going in current City: #{current_city.name}"
    found_flag = false
    neighbor_cities = current_city.neighbors
    next_city = neighbor_cities[0]
    neighbor_cities.each do |current_neighbor|
      if current_neighbor.distance < next_city.distance
        next_city = current_neighbor.city
        found_flag = true
      end
    end
    current_city.visited = true
    puts "Current_city is #{current_city.name}" if current_city.visited
    if found_flag
      current_city = next_city
    else
      current_city = next_city.city
    end
    puts "The next city is: #{current_city.name}"
  end # END WHILE


end
