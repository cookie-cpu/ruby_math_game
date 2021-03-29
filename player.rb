class Player

  attr_accessor :lives

  def initialize()
    @lives = 3
  end

  def remove_life
    @lives -= 1
  end

  def lose_game
    if @lives <= 0
      puts "You lost!"
    end
  end

end