class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
  	@name = name
  	@age = age
  	@gender = gender
  	@species = species
  	@toys = []
  end

end



class AutomaticAnimal < Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize
  	naminator
  	aginator
  	genderer
  	specieserator
  	@toys = []
  end

  def naminator
	arr = %w(Scrunchy Fido Sport Molly Lassie Snuggles Butch Wiggles Snoopy Munchkin Hopper Tiny Hooch Moochy Moops)
	@name = arr[rand(arr.length)]
  end

  def aginator
  	@age = rand(8) + 1
  end

  def genderer
  	arr = [male, female]
  	@gender = arr[rand(1)]
  end

  def specieserator
  	arr = %w(dog cat rat hamster porcupine cockatiel goldfish python dog cat dog cat cat cat dog dog dog dog cat cat cat cat dog dog cat dog dog cat)
    @species = arr[rand(arr.length)]
  end

  def toymaker
  	arr = %w(ball bone squeaky-toy feather squeaky-mouse ball stuffed-animal)
    rand(5).times do
      @toys <<  arr[rand(arr.length)]
    end
  end

end
