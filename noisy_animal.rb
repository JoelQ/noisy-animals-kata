# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if is_bird && loud
      make_bird_noise(true)
    elsif is_bird && !loud
      make_bird_noise(false)
    elsif is_mammal && loud
      2.times { puts mammal_noise }
    elsif is_mammal && !loud
      puts mammal_noise
    end
  end

  private

  def is_mammal
    %w[cat dog leopard].include?(species)
  end

  def mammal_noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl'
    }[species]
  end

  def bird_noise
      {
        'hadedah' => 'squawk',
        'eagle' => 'caw',
        'owl' => 'hoot'
      }[species]
  end

  def make_bird_noise(is_loud = true)
    puts bird_noise
    if is_loud
      puts bird_noise
    else
      raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
    end
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end
end
