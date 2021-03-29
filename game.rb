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
    
    puts "welcome to the ruby math game! ".upcase    
    until game_over? do
      puts "\n--- NEW TURN ---"
      puts "--- Your Turn #{current_player.name} ---"
      q = Question.new
      input = gets.chomp.to_i
        if input != q.answer
          puts "--- Incorrect! You lose a life! ---"
          current_player.remove_life
        elsif input == q.answer
          puts "--- Correct! Nice job! ---"
          current_player.add_score
        end
        print_score
        swap_turn
      end
      puts "--- GAME OVER ---"
      puts "--- FINAL SCORE ---"
      puts "| Player1: #{@players[0].score} |"
      puts "| Player2: #{@players[1].score} |"
  end

  def swap_turn
    @current_player = (@current_player + 1) % @players.length
  end

  def print_score
    puts "ScoreBoard: "
    puts " Player1: #{@players[0].lives} lives left || Score: #{@players[0].score}\n 
Player2: #{@players[1].lives} lives left || Score: #{@players[1].score}"
  end

  def game_over?
    @players.any? { |player| player.lives <= 0}
  end

end
