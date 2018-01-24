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
    @form == "Human"
  end

  def wolf?
    @form == "Werewolf"
  end

  def change!
    if human?
      @form = "Werewolf"
      @hungry = true
    else
      @form = "Human"
    end
  end

  def hungry?
    @hungry
  end

  def consume!(victim)
    unless human?
      @hungry = false
      victim.status = :dead
      "Victim consumed."
    else
    "Cannot eat in human form."
    end
  end



end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end