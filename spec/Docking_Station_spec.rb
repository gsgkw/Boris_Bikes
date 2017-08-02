require 'Boris_bikes'

describe DockingStation do
"it 'responds to release_bike' do
docking_station = DockingStation.new
  expect(DockingStation.new.release_bike.class).to eq [Bike]
end
"
it 'raises error when release bike called and no bike' do
  docking_station = DockingStation.new
  expect{docking_station.release_bike}.to raise_error("there are no bikes")
end

it 'responds to dock_bike' do
  docking_station = DockingStation.new
  DockingStation::DEFAULT_CAPACITY.times { docking_station.dock_bike(Bike.new) }
  expect{docking_station.dock_bike(Bike.new)}.to raise_error("this dock is full")
end

it 'docking_station has non-default capacity' do
  docking_station = DockingStation.new(30)
  expect(docking_station.capacity).to eq 30
end

it 'docking_station has default capacity' do
  docking_station = DockingStation.new
  expect(docking_station.capacity).to eq 20
end


end
