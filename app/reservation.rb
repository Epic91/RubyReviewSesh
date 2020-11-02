class Reservation
  attr_reader :baller, :vip, :day
  @@all = []

  def initialize(baller, vip, day)
    @baller = baller
    @vip = vip
    @day = day

    @@all << self
  end

  def self.all
    @@all
  end

  def self.monday
    self.all.select do |rezzy|
      rezzy.day == "Monday"
    end
  end
end