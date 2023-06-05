class BikeClub
  attr_reader :name, :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker)
    @bikers << biker
  end

  def most_rides_logged
    most_rides = []
    @bikers.each_with_index do |biker, index|
      break if index == @bikers.length - 1
      if biker.rides.values.count > @bikers[index + 1].rides.values.count
        most_rides << biker
      end
    end
    most_rides
  end
end