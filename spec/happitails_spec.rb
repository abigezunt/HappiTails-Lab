require 'spec_helper'
require_relative '../lab/main'

describe Client do
	let(:animal) { Animal.new('Tassy', 3, 'male', 'Dog')}
	subject {Client.new('tom', 42, 'male', 2)}

	before do
		subject.adopt('Tassy', animal)
	end
	it "should be able to adopt a pet" do
		subject.pets.should include {animal}
	end

	it "should add animal to the person's pet list" do
		subject.num_pets.should eq 1
	end
end