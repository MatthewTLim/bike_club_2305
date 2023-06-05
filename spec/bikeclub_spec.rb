require './lib/bikeclub'
require './lib/ride'
require './lib/biker'

RSpec.describe BikeClub do
  before do
    @bikeclub = BikeClub.new("Ten Speeders")
    @biker = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end

  describe "#exists" do
    it "exists" do
      expect(@bikeclub).to be_a(BikeClub)
    end

    it "has readable attibutes" do
      expect(@bikeclub.name).to eq("Ten Speeders")
      expect(@bikeclub.bikers).to eq([])
    end
  end

  describe "#add_biker" do
    it "can add bikers to the club" do
      @bikeclub.add_biker(@biker)

      expect(@bikeclub.bikers).to eq([@biker])
    end
  end

  describe "#most_rides_logged" do
    it "can tell us which Biker has logged the most rides" do
      @bikeclub.add_biker(@biker)
      @bikeclub.add_biker(@biker2)

      @biker.learn_terrain!(:gravel)
      @biker.learn_terrain!(:hills)
      @biker2.learn_terrain!(:gravel)

      @biker.log_ride(@ride1, 92.5)
      @biker.log_ride(@ride1, 91.1)
      @biker.log_ride(@ride2, 60.9)
      @biker.log_ride(@ride2, 61.6)

      @biker2.log_ride(@ride2, 65.0)
    
      expect(@bikeclub.most_rides_logged).to eq([@biker])
    end
  end
end