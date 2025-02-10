# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah' && !loud

    if loud
      2.times { puts noise }
    else
      puts noise
    end
  end

  private

  def noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'hadedah' => 'squawk',
      'eagle' => 'caw',
      'owl' => 'hoot',
    }[species]
  end
end
