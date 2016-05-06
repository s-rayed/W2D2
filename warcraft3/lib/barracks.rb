class Barracks

  attr_reader :gold, :food, :lumber
  attr_accessor :health_points

  def initialize
    @health_points = 500
    @gold = 1000
    @food = 80
    @lumber = 500
  end

  def can_train_footman?
    self.gold >= 135 && self.food >= 2
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      footman = Footman.new
    end
  end

  def can_train_peasant?
    self.gold >= 90 && self.food >= 5
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      peasant = Peasant.new
    end
  end

  def damage(amount)
    self.health_points -= (amount/2)
  end


end