class Game

  def initialize
    @players = [
      Player.new("Player 1"), 
      Player.new("Player 2")]
    @current_player = 0
  end

  def current_player
    @players[@current_player]
  end

  def start
    
    puts "welcome to the ruby math game!"
    until game_over? do
      puts "--- NEW TURN ---"
      puts "--- Your Turn #{current_player.name} ---"
      q = Question.new
        if gets.chomp.to_i != q.answer
          puts "--- Incorrect! You lose a life! ---"
          current_player.remove_life
        end
        print_score
        swap_turn
      end
      puts "--- GAME OVER ---"
  end

  def swap_turn
    @current_player = (@current_player + 1) % @players.length
  end

  def print_score
    puts "ScoreBoard: "
    puts " P1: #{@players[0].lives} lives left\n P2: #{@players[1].lives} lives left"
  end

  def game_over?
    @players.any? { |player| player.lives <= 0}
  end

end
