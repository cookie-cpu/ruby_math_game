class Player

  attr_accessor :lives
  attr_accessor :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def remove_life
    @lives -= 1
  end

  def add_score
    @score += 1
  end

end