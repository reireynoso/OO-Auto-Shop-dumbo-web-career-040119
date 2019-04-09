class CarOwner

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    cars = Car.all.select do |cars|
      cars.owner == self
    end
  end

  def mechanics
    #binding.pry
    mechanics = self.cars.map do |cars|
      cars.mechanic
    end
  end

  def average_car_owned
    #binding.pry
    average = Car.all.length.to_f / CarOwner.all.length.to_f
    average
  end

  def self.all
    @@all
  end

end
