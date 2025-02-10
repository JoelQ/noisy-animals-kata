# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah' && !loud

    if is_bird && loud
      2.times { puts noise }
    elsif is_bird && !loud
      puts noise
    elsif is_mammal && loud
      2.times { puts noise }
    elsif is_mammal && !loud
      puts noise
    end
  end

  private

  def is_mammal
    %w[cat dog leopard].include?(species)
  end

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

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end
end
