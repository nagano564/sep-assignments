class City
  attr_accessor :name
  attr_accessor :visited
  attr_accessor :neighbors

  def initialize(name)
    @name = name
    @visited = false
    @neighbors = Array.new
  end
end

class Neighbor
  attr_accessor :name
  attr_accessor :distance

  def initialize(name, distance)
    @name = name
    @distance = distance
  end
end
