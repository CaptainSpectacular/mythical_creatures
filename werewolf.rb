class Werewolf
  attr_reader :name, :location
  attr_accessor :form, :hungry

  def initialize(name, location = "London")
    @name = name
    @location = location
    @form = "Human"
    @hungry = false
  end

  def human?
    @form == "Human" ? true : false
  end

  def wolf?
    !human?
  end

  def change!
    human? ? @form = "Werewolf" && @hungry = true : @form = "Human"
  end

  def hungry?
    @hungry
  end

end