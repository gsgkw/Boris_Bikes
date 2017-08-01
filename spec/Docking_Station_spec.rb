require 'Boris_bikes'
describe DockingStation do
it 'responds to release_bike' do
#docking_station = DockingStation.new
  expect(DockingStation.new.release_bike.class).to eq Bike
end
end
