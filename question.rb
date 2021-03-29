class Question

  attr_accessor :answer

  def initialize
    @num1 = rand(1..12)
    @num2 = rand(1..12)
    #@operand = ['+', '-', '/', '*'].sample
    #puts = "What is #{@n1} #{@operand} #{@n2}"
    puts "What is #{@num1} + #{@num2}"
    @answer = @num1 + @num2
  end

  # def prompt
  #   "What is #{@num1} + #{@num2}"
  # end

  def is_correct(user_ans)
    if user_ans == @answer
      return true
    else
      return false
    end
  end


end