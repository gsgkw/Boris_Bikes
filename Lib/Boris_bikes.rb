

class DockingStation

attr_reader :bikes, :bike, :capacity
DEFAULT_CAPACITY = 20

def initialize(capacity = DEFAULT_CAPACITY)
  @bikes = []
  @capacity = capacity
end

def release_bike
  raise 'there are no bikes' if empty?
@bikes.pop
end

def dock_bike(bike)
raise 'this dock is full' if full?
@bikes << bike
end

private
def full?
  @bikes.size == DEFAULT_CAPACITY
end

def empty?
  @bikes.size == 0
end




end


class Bike

def working?
end

end
