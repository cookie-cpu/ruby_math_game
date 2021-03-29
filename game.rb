class Game

  def initialize
    @players = [
      Player1.new("Player 1"), 
      Player2.new("Player 2")]
    @game_over = false
  end

  def start
    while @game_over == false
  end

  def question
    question = Question.new
    @question = question.question
    @answer = question.answer