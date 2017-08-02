require './players'

class Problems
  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @num3 = @num1 + @num2
  end
  
  def question
    "What does #{@num1} + #{@num2} equal? #{@num3}"
  end

  def answer_correct(answer)
    return answer.to_i == @num3
  end
    
end

# The Problems class will have methods that create a equation and an if statement to see whether the answer is right or not based on user input. The constructor wil have 3 numbers, 2 random numbers between 1 - 20 and the sum of the 2 numbers.  