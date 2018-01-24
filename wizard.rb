class Wizard
  attr_reader :name
  attr_accessor :bearded, :rested, :unrest

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @unrest = 0
  end

  def bearded?
    @bearded
  end

  def incantation(words)
    "sudo #{words}"
  end

  def rested?
    @rested
  end

  def cast
    @unrest += 1
    @rested = false if @unrest >= 3
    "MAGIC MISSILE!"

  end
end