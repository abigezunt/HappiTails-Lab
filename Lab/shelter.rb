class Shelter

	attr_accessor :name, :address, :clients, :animals, :animal_list, :client_list

	def initialize(name, address)
	  @name = name
	  @address = address
	  @clients = {}
	  @animals = {}
	end

	def add_client(name)
		@clients << name
	end

	def add_animal(animal)
		@animals << animal
	end

	def display_clients
		@client_list = []
		@clients.each do |key, value|
		  @client_list << value.to_s
		end
		@client_list
	end

	def display_animals
		@animal_list = []
		@animals.each do |key, value|
		  @animal_list << value.to_s
		end
		@animal_list
	end

	def new_animal(name, animal)
		@animals = {name => animal}
	end

	def rescue_animal(name, animal)
		@animals = {name => animal}
	end

	def adopt_out(animal)
		@animals.delete(animal)
	end

end