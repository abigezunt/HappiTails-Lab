class Shelter

	attr_accessor :name, :address

	def initialize(name, address)
	  @name = name
	  @address = address
	  @clients = []
	  @animals = []
	end

	def add_client(name)
		@clients << name
	end

	def add_animal(animal)
		@animals << animal
	end

	def display_clients
		@clients
	end

	def display_animals
		@animals
	end

	def new_animal
		@animals << AutomaticAnimal.new
	end

	def rescue_animal(animal)
		@animals << animal
	end

end