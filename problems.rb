require './players'

class Problems
  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @num3 = @num1 + @num2
  end
  
  # Returns a addition equation based on the two random variables from the construct
  def question
    "What does #{@num1} + #{@num2} equal?"
  end

  # returns a statement to output a boolean in Game class
  def answer_correct(answer)
    answer.to_i == @num3
  end
    
end
