class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
  	@name = name
  	@age = age
  	@gender = gender
  	@species = species
  	@toys = []
  end

  def to_s 
  	"#{@name}, #{@age}-year-old #{@gender} #{@species}."
  end

end



class AutomaticAnimal < Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name)
  	@name = name
  	aginator
  	genderer
  	specieserator
	@toys = []  
  	toymaker
  end

  def aginator
  	@age = rand(8) + 1
  end

  def genderer
  	arr = ['male', 'female']
  	@gender = arr[rand(1)]
  end

  def specieserator
  	arr = %w(dog cat rat hamster porcupine cockatiel goldfish python dog cat dog cat cat cat dog dog dog dog cat cat cat cat dog dog cat dog dog cat)
    @species = arr[rand(arr.length)]
  end

  def toymaker
  	arr = %w(ball bone squeaky-toy feather squeaky-mouse ball stuffed-animal)
    rand(5).times do
      toy = arr[rand(arr.length)]
      @toys << toy
    end
    @toys
  end

end
