class Game

  def initialize
    @players = [
      Player1.new("Player 1"), 
      Player2.new("Player 2")]
    @game_over = false
    @current_turn = 0
  end

  def current_player
    @players[@current_turn]
  end

  def start
    # while @game_over == false
    puts "welcome to the ruby math game!"
    until @game_over do
      puts "--- NEW TURN ---"
      puts "--- Your Turn #{current_player.name} ---"
      q = Question.new
      puts q.question
        if gets.chomp.to_i != q.answer
          current_player.remove_life
        end
        swap_turn
        print_score
      end

  end

  def swap_turn
    @current_player = (current_player + 1) % @players.length
  end

  def print_score
    puts "P1: #{@players[0].lives} lives left, P2: #{@players[1].lives} lives left"
  end

  # def question
  #   question = Question.new
  #   @question = question.question
  #   @answer = question.answer
  # end