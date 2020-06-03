require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Test your code here

zooa = Zoo.new("Zoo A", "Location A")
zoob = Zoo.new("Zoo B", "Location B")
zooc = Zoo.new("Zoo C", "Location C")

animal1 = Animal.new("Dog", "Jack", 100)
animal2 = Animal.new("Cat", "Jackson", 200)
animal3 = Animal.new("Rat", "Jake", 10)
animal1.zoo = zooa
animal2.zoo = zoob
animal3.zoo = zooc

binding.pry
puts "done"
