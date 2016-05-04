class Unit

  attr_reader :attack_points, :health_points
  # attr_accessor :health_points

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
    enemy.damage(@attack_power) unless self.dead?
  end

  def dead?
    self.health_points <= 0
  end
  
end