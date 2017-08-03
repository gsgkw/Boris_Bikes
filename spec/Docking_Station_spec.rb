require 'Boris_bikes'

describe DockingStation do
"it 'responds to release_bike' do
docking_station = DockingStation.new
  expect(DockingStation.new.release_bike.class).to eq [Bike]
end
"
#let(:bike) {double :bike}

it 'raises error when release bike called and no bike' do
  docking_station = DockingStation.new
  expect{docking_station.release_bike}.to raise_error("there are no bikes")
end

it 'responds to dock_bike' do
  docking_station = DockingStation.new
  bike  = double("bike", :working= =>true)
  DockingStation::DEFAULT_CAPACITY.times { docking_station.dock_bike(bike) }
  expect{docking_station.dock_bike(bike)}.to raise_error("this dock is full")
end

it 'docking_station has non-default capacity' do
  docking_station = DockingStation.new(30)
  expect(docking_station.capacity).to eq 30
end

it 'docking_station has default capacity' do
  docking_station = DockingStation.new
  expect(docking_station.capacity).to eq 20
end

it 'docking_station logs bike not working' do
  docking_station = DockingStation.new
  bike = double("bike", :working= => false, :working? => false)
  docking_station.dock_bike(bike,false)
  expect(docking_station.bikes.first.working?).to eq false
end

it 'docking_station logs bike not working' do
  docking_station = DockingStation.new
  bike = double("bike", :working= => true, :working? => true)
  docking_station.dock_bike(bike)
  expect(docking_station.bikes.first.working?).to eq true
end


it 'docking_station only returns working bike' do
  station = DockingStation.new
  bike1 = double("bike", :working= => false, :working? => false)
  station.dock_bike(bike1)
  bike2 = double("bike", :working= => false, :working? => true)
  station.dock_bike(bike2)
  bike = double("bike", :working? => false, :working= => false)
  station.dock_bike(bike)
  bike = double("bike", :working? => false, :working= => false)
  expect(station.release_bike.working?).to eq true

end



end
