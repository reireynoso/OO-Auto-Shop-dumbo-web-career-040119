require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rei = CarOwner.new('Rei')
michelle = CarOwner.new('Michelle')
kring = CarOwner.new('Kring')
kenn = CarOwner.new('Kenn')
chris = CarOwner.new('Chris')

nick = Mechanic.new('Nick','BMW')
mir = Mechanic.new('Mir','Benz')
mike = Mechanic.new('Mike','Toyota')
rick = Mechanic.new('Rick','Honda')

car1 = Car.new(rei,nick,'Benz','C300','Sedan')
car2 = Car.new(rei,mir,'Toyota','Rav4','SUV')
car3 = Car.new(michelle,nick,'Honda','Accord','Sedan')
car4 = Car.new(kring,rick,'Honda','Accord','Sedan')
car5 = Car.new(kenn,mike,'Honda','Civic','Sedan')
car6 = Car.new(kenn,nick,'BMW','M3','Convertible')
car7 = Car.new(chris,mike,'Toyota','Celica','Coupe')


rei.cars
rei.mechanics
rei.average_car_owned
nick.cars

nick.car_owners

car6.car_classifications
car3.mechanics_match

binding.pry
