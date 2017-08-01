require 'Boris_bikes.rb'

describe Bike do
it 'responds to working method' do
bike = Bike.new
  expect(bike.working?).to eq(nil)
end
end
