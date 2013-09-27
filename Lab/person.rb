class Person
  attr_accessor :name, :age, :gender, :num_kids

  def initialize(name, age, gender, num_kids=0)
  	@name = name
  	@age = age
  	@gender = gender
  	@num_kids = num_kids
  	@num_pets = @pets.length
  	@pets = {}
  end

end

class Client < Person
  
  def adopt_a_pet(name, animal_object)
  	@pets << {name => animal_object}
  end

  def return_a_pet(name)
  	@pets.delete(name)
  end

end

$shelter.clients['Sam'] = Person.new('Sam', 87, 'male', 3)