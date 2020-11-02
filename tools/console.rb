require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
max = Baller.new("Max", 99)
oscar = Baller.new("Oscar", 2)
derick = Baller.new("Derick", 50)
dena = Baller.new("Dena", 1000)
ronalyssa = Baller.new("Ronalyssa", 4)

cool_palace = Vip.new("cool_palace", "Chicago", 5000)
warm_palace = Vip.new("warm_palace", "Vegas", 90000)
pineapple_palace = Vip.new("pineapple_palace", "Fiji", 100)
velvet_palace = Vip.new("velvet_palace", "France", 2000000)
gucci_palace = Vip.new("gucci_palace", "France", 6000000)
versace_palace = Vip.new("versace_palace", "France", 9000000)

rezzy1 = Reservation.new(max, versace_palace, "Saturday")
rezzy2 = Reservation.new(derick, pineapple_palace, "Tuesday")
rezzy3 = Reservation.new(oscar, gucci_palace, "Friday")
rezzy4 = Reservation.new(dena, versace_palace, "Monday")
rezzy5 = Reservation.new(dena, versace_palace, "Tuesday")
rezzy6 = Reservation.new(ronalyssa, versace_palace, "Monday")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line