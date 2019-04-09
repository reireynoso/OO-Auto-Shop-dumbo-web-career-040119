class Mechanic

  attr_reader :name, :specialty
  @@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def cars
  cars = Car.all.select do |cars|
    #binding.pry
    cars.mechanic == self
  end
end

def car_owners
  #binding.pry
  self.cars.map do |cars|
    cars.owner
  end
end

def car_owners_names
  self.car_owners.map do |cars|
    cars.name
  end
end

def self.all
  @@all
end

end
