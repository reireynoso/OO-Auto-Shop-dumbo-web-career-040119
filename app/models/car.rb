class Car

  attr_reader :make, :model, :owner, :mechanic
  @@all = []
  def initialize(owner,mechanic,make, model, classification)
    @owner = owner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def car_classifications
    self.make
  end

  def mechanics_match
    #binding.pry
    Mechanic.all.find do |mechanics|
      
      mechanics.specialty == self.make
      #binding.pry
    end
  end

  def self.all
    @@all
  end
end
