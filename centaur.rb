class Centaur
  attr_reader :name, :breed
  attr_accessor :standing, :cranky
  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @cranky = 0
    @laying = false
  end

  def shoot
    @cranky += 1
    (cranky? || laying?) ? "NO!" : "Twang!!!"
  end

  def run
    @cranky += 1
    (cranky? || laying?) ? "NO!" : "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky >= 3 ? true : false
  end

  def standing?
    @standing
  end

  def sleep
    @standing == true ? "NO!" : @cranky = 0
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up 
    @standing = true
    @laying = false
  end

  def drink_potion
    unless laying?
      @cranky = 0 if standing?
      @sick = true if @cranky == 0
    else
        "Cannot drink while laying!"
    end
  end

  def sick?
    @sick
  end


end