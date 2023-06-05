require './lib/bikeclub'

RSpec.describe BikeClub do
  before do
    @bikeclub = BikeClub.new("Ten Speeders")
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
end