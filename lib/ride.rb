class Ride
  attr_reader :name, :distance, :terrain, :loop

  def initialize(info)
    @name = info[:name]
    @distance = info[:distance]
    @loop = info[:loop]
    @terrain = info[:terrain]
  end

  def loop?
    @loop
  end

  def total_distance
    total = 0
    if loop? == true
      total = @distance
    else
      total = @distance.to_f * 2
    end
    total
  end
end