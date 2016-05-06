class Unit

  attr_accessor :attack_power
  attr_reader :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def change_health(amount)
    @health_points -= amount
  end

  def damage(amount)
    self.change_health(amount)
  end

  def attack!(enemy)
    if self.dead? || (self.class == SiegeEngine && enemy.class == Footman)
      nil
    elsif (self.class == SiegeEngine && enemy.class == Barracks)
      enemy.damage((@attack_power)*4)
    else
      enemy.damage(@attack_power)
    end
  end

  def dead?
    self.health_points <= 0
  end
  
end