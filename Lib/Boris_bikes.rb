class DockingStation

attr_reader :bikes, :bike, :capacity
DEFAULT_CAPACITY = 20

def initialize(capacity = DEFAULT_CAPACITY)
  @bikes = []
  @capacity = capacity
  @broken_bikes = []
end

def release_bike
  raise 'there are no bikes' if empty
  raise 'there are no working bikes' if !working_bikes?
  @bikes.each do |bike|
    if bike.working?
      @bikes.delete(bike)
      return bike
    end
  end
end


def dock_bike(bike, works = true)
  raise 'this dock is full' if full?
  bike.working = works
  @bikes << bike
end

def release_broken_bikes

end



private
  def full?
    @bikes.size == DEFAULT_CAPACITY
  end

  def empty
    @bikes.size == 0
  end

  def working_bikes?
    @bikes.count{|bike| bike.working? == true} > 0
  end
end


class Bike
  attr_accessor :working

  def initialize (working = true)
    @working = working
  end

  def working?
    @working
  end
end


class Van

  def initialize
    @broken_bikes = []
    @fixed_bikes = []
  end


end
