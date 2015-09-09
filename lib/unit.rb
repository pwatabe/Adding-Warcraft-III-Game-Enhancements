class Unit
  # attr_accessor :health_points, :attack_power
  attr_reader :health_points
  def initialize(health_points,attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end
  def damage(num)
    @health_points -= num
  end
  def attack!(enemy)
    enemy.damage(@attack_power)
  end
  
end
unit = Unit.new(30,5)
