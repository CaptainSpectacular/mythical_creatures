class Medusa
  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    if @statues.size > 3
      released = @statues.shift
      released.petrified = false
    end
    victim.petrified = true
  end
end

class Person
  attr_reader :name
  attr_accessor :petrified

  def initialize(name)
    @name = name
    @petrified = false
  end

  def stoned?
    @petrified
  end
end