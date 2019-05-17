require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Follower.new("bob", 10)

flatiron = Cult.new("flatiron","ny",2012)

bob.join_cult(flatiron)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
