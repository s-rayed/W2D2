# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_reader :attack_power
  attr_accessor :health_points

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy)
    enemy.damage(self.attack_power)
  end

  def damage(amount)
    self.health_points -= amount
  end

end
