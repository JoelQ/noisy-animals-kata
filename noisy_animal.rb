class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise_twice
    if species == "cat"
      puts "meow"
      puts "meow"
    elsif species == "dog"
      puts "woof"
      puts "woof"
    elsif species == "leopard"
      puts "growl"
      puts "growl"
    end
  end
end
