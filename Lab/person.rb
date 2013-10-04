class Person
  attr_accessor :name, :age, :gender, :num_kids, :pets, :num_pets

  def initialize(name, age, gender, num_kids=0)
  	@name = name
  	@age = age
  	@gender = gender
  	@num_kids = num_kids
  	@pets = {}
  end

  def to_s
  	"#{name}, #{@age} year old #{@gender}. Has #{@num_kids} children and #{@num_pets} pets."
  end

end

class Client < Person
  
  def adopt(name, animal_object)
  	@pets[:name] = animal_object
    @num_pets = @pets.length
  end

  def return(name)
  	@pets.delete(name)
  end

end
