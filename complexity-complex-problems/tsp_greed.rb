require_relative 'city_node'

def nearest_possible_neighbor(graph_of_cities, current_city)
  #city (visited, neighbors[])
  puts "going in GRAPH: #{graph_of_cities}"

  puts "going in current City: #{current_city}"
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
      if current_neighbor.distance < next_city.distance
  #       ASSIGN current_neighbor TO next_city
        next_city = current_neighbor
  #     END IF
      end
  #   END FOR
    end
  # SET current_city.visited to TRUE
    current_city.visited = true
  # ASSIGN next_city TO current_city
    next_city = current_city
    puts "The closest City is: #{next_city.name}"
  end # END WHILE


end
