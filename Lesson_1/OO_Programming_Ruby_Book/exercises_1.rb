#1.How do we create an object in Ruby? Give an example.
#We create an object through a class, first we define a class
#and then instantiate a new object to class
###Ex.

#class BestBandInWorld #created instance of class
#end

#king_gizz = BestBandInWorld.new #instantiate new object of BestBandInWorld class

#2.What is a module? It's purpose? How do we use them wt our classes?
#Create a module for the class you created in exercise 1 and include it
#properly.

#Module is a collection of behaviors, usable wt other classes via 'mixins'
#Module extends functionality of a class
#Purpose is to allow seperate classes to have access to a method

module Woo
  def woo(sound)
    puts sound
  end
end

class BestBandInWorld
  include Woo #functionality of 'Woo' now available to "BestBandInWorld" class
end

king_gizz = BestBandInWorld.new
king_gizz.woo("Woo!")