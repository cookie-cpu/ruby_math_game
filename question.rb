class Question

  attr_accessor :answer

  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    puts "What is #{@num1} + #{@num2}"
    @answer = @num1 + @num2
  end

end