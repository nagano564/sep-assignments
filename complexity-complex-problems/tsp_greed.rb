require_relative 'city_node'

def nearest_possible_neighbor(current_city)

  puts "going in current City: #{current_city.name}"
  # WHILE current_city.visited IS FALSE
  while !current_city.visited do
  #   SET neighbor_cities TO current_city.neighbors
    neighbor_cities = current_city.neighbors
    puts " Neighbor Cities for: #{current_city.name} => #{neighbor_cities}"
  #   SET next_city = neighbor_cities[0]
    next_city = neighbor_cities[0]
  #   FOR current_neighbor IN neighbor_cities
    neighbor_cities.each do |current_neighbor|
  #     IF current_neighbor.distance < next_city.distance
      puts "Current_neighbor #{current_neighbor.city.name} distance: #{current_neighbor.distance}"
      if current_neighbor.distance < next_city.distance
  #       ASSIGN current_neighbor TO next_city
        next_city = current_neighbor.city
        puts "The closer City is: #{next_city.name}"
  #     END IF
      end
  #   END FOR
    end
  # SET current_city.visited to TRUE
    current_city.visited = true
  # ASSIGN next_city TO current_city
    current_city = next_city
    puts "The next city is: #{current_city.name}"
  end # END WHILE


end
