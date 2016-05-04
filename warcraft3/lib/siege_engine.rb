class SiegeEngine < Unit

  attr_reader :health_points, :attack_power

  def initialize
    @health_points = 400
    @attack_power = 50
  end

  def attack!(enemy)
    if enemy.class == 'Barracks'
      enemy.damage((self.attack_power)*2)
    elsif enemy.class == 'SiegeEngine'
      enemy.damage(self.attack_power)
    else
      enemy.damage(0)
    end
  end


end