require 'pry'

class Cult

  attr_accessor :name, :location, :founding_year, :slogan, :recruit_follower, :cult_population, :followers

  @@all = []

  def initialize(name, location, founding_year)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @followers = []

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(cult_name)
    self.all.find do |cult|
      cult.name == cult_name
    end
  end

#binding.pry

  def self.find_by_location(cult_location)
    Cult.all.find do |cult|
      cult.location == cult_location
    end
  end

#binding.pry

  def self.find_by_founding_year(cult_founding_year)
    Cult.all.find do |cult|
      cult.founding_year == cult_founding_year
    end
  end

  def recruit_follower(follower)
    self.followers << follower #follower instance var is empty array that followers go into 
  end



   # binding.pry
end
 #binding.pry
puts 'lol'
