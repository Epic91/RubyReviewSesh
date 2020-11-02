class Baller
  attr_reader :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age

    @@all << self
  end

  def self.all
    @@all
  end

  def reservations
    Reservation.all.select do |rezzy|
      rezzy.baller == self
    end
  end

  def add_reservation(vip, day)
    Reservation.new(self, vip, day)
  end

  def self.oldest_baller
    ordered_ballers = self.all.sort_by do |baller|
      baller.age
    end

    ordered_ballers.last.name
  end

  def self.flashiest_baller
    ordered_ballers = self.all.sort_by do |baller|
      baller.reservations.size
    end

    ordered_ballers.last.name
  end
end