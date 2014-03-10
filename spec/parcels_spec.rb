require "rspec"
require "parcels"

describe Parcel do
  it "is initialized with dimensions and weight" do
    test_parcel = Parcel.new(5, 5, 5, 10)
    test_parcel.should be_an_instance_of Parcel
  end

  it "returns the product of the sides when volume is called" do
    test_parcel = Parcel.new(5, 5, 5, 10)
    test_parcel.volume.should eq 125
  end

  it "returns the cost of shipping" do
    test_parcel = Parcel.new(5, 5, 5, 10)
    test_parcel.cost_to_ship.should eq 13.5
  end
end
