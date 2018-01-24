class Pirate
  attr_reader :name
  attr_accessor :job, :cursed, :curse_count, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @curse_count = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @curse_count += 1
    @cursed = true if @curse_count >= 3
  end

  def rob_ship
    @booty += 100
  end
end