class Zoo
  
  attr_accessor :name, :location
  
  @@all = []
  
  def initialize(name, location)
    @name = name
    @location =  location
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def animals
    Animal.all.select{|animal| animal.zoo == self}
  end
  
  def animal_species
    animals.map(&:species).uniq
  end
  
  def find_by_species(species)
    animals.select(&:species)
  end
  
  def animal_nicknames
    animals.map(&:nickname)
  end
  
  def self.find_by_location(location)
    all.select{|zoo| zoo.location == location}
  end
  
end
