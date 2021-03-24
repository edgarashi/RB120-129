#Consider the following code:
class Pet
  attr_accessor :species, :name

  def initialize(species, name)
    @species = species
    @name = name
  end
end

class Owner
  attr_accessor :name, :pets, :number_of_pets

  def initialize(name)
    @name = name
    @pets = []
    @number_of_pets = 0
  end

  def pet(animal)
    @pets << animal
    @number_of_pets += 1
  end

  def number_of_pets
    @number_of_pets
  end

  def print_pets
    @pets.each {|pet| p "a #{pet.species} named #{pet.name}"}
  end
end

class Shelter
  def initialize
    @owners = {}
  end

  def adopt(person_name, animal_name)
    person_name.pet(animal_name)
    @owners[person_name] = animal_name
  end

  def print_adoptions
    @owners.each do |k, v|
      puts "#{k.name} has adopted the following pets"
      "#{k.print_pets}"
    end
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# Write the classes and methods that will be necessary to make this
# code run, and print the following output:
# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.