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

  def make_bird_noise(is_loud = true)
    if species == 'hadedah'
      puts 'squawk'
    elsif species == 'eagle'
      puts 'caw'
    else
      puts 'hoot'
    end
    if is_loud
      if species == 'owl'
        puts 'hoot'
      end
      if species == 'eagle'
        puts 'caw'
      end
      if species == 'hadedah'
        puts 'squawk'
      end
    else
      raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
    end
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end
end
