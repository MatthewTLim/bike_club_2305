require './lib/ride'

RSpec.describe Ride do
  before do
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end

  describe "#exists" do
    it "exists" do
      expect(@ride1).to be_a(Ride)
    end

    it "has readable attributes" do
      expect(@ride1.name).to eq("Walnut Creek Trail")
      expect(@ride1.distance).to eq(10.7)
      expect(@ride1.terrain).to eq(:hills)
    end
  end

  describe "#loop?" do
    it "can tell if a ride is a loop or not" do
      expect(@ride1.loop?).to eq(false)

    end
  end

  describe "#total_distance" do
    it "can calculate the total distance of a ride if it is NOT a loop" do
      expect(@ride1.total_distance).to eq(21.4)
    end

    it "can calculate the totla distance if it IS a loop" do
      expect(@ride2.loop?).to eq(true)
      expect(@ride2.total_distance).to eq(14.9)
    end
  end
end