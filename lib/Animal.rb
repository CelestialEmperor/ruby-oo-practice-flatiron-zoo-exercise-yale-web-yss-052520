class Animal
  
  attr_reader :species, :nickname
  attr_accessor :weight, :zoo
  
  @@all = []
  
  def initialize(species, nickname, weight)
    @species = species
    @nickname =  nickname
    @weight = weight
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def zoo
    Zoo.all.select{|zoo| zoo.animal == self}
  end
  
  def self.find_by_species(species)
    all.select(&:species)
  end
  
end