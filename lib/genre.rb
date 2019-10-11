class Customer
  attr_accessor :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
 

end