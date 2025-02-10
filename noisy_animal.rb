# frozen_string_literal: true

module NoisyAnimal
  def self.new(species)
    {
      'cat' => Cat.new,
      'dog' => Dog.new,
      'leopard' => Leopard.new,
      'hadedah' => Hadedah.new,
      'eagle' => Eagle.new,
      'owl' => Owl.new,
      }[species]
  end
end

class Animal
  def make_noise(loud: true)
    if loud
      make_loud_noise
    else
      make_quiet_noise
    end
  end

  private
  def make_loud_noise
    2.times { puts noise }
  end

  def make_quiet_noise
    puts noise
  end
end

class Cat < Animal
  def noise
    'meow'
  end
end

class Dog < Animal
  def noise
    'woof'
  end
end

class Leopard < Animal
  def noise
    'growl'
  end
end

class Hadedah < Animal
  def noise
    'squawk'
  end

  private
  def make_quiet_noise
    raise 'there is no such thing as a quiet hadedah!'
  end
end

class Eagle < Animal
  def noise
    'caw'
  end
end

class Owl < Animal
  def noise
    'hoot'
  end
end
