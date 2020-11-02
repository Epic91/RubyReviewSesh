class Vip
  attr_reader :name, :location, :price
  @@all = []

  def initialize(name, location, price)
    @name = name
    @location = location
    @price = price

    @@all << self
  end

  def self.all
    @@all
  end

  def ballers
    my_rezzies = Reservation.all.select do |reservation|
      reservation.vip == self
    end

    my_ballers = my_rezzies.map do |rezzy|
      rezzy.baller.name
    end

    my_ballers.uniq
  end
  
  def self.milli_club
    self.all.find do |vip|
      vip.price > 1000000
    end
  end
end