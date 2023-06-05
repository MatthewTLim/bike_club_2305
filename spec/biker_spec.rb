require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  before do
    @biker = Biker.new("Kenny", 30)
  end

  describe "#exists" do
    it "exists" do
      expect(@biker).to be_a(Biker)
    end

    it "has readable attributes" do
      expect(@biker.name).to eq("Kenny")
      expect(@biker.max_distance).to eq(30)
      expect(@biker.rides).to eq({})
      expect(@biker.acceptable_terrain).to eq([])
    end
  end
end