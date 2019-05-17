require 'pry'

class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name,age)
    @name = name
    @age = age
    # @life_motto = life_motto

    @@all << self
  end

  def self.all
    @@all
  end

  # def cult
  #   Cult.all.select do |cult|
  #     cult.follower == self
  #   end
  # end

  def join_cult(cult)
    cult.followers << self

  end

  def self.of_a_certain_age(age)
    Follower.all.select do |person|
      person.age == age
    end
  end


   #binding.pry

end

# binding.pry

puts 'lol'
