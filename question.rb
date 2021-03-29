class Question

  attr_accessor :answer

  def initialize
    @n1 = rand(1..12)
    @n2 = rand(1..12)
    @operand = ['+', '-', '/', '*']
    @question = @n1 @operand @n2
    @answer = @n1 @operand @n2
  end
end