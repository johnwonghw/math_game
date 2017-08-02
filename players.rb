class Player

  attr_accessor :name, :hp
  def initialize (name)
    @name = name
    @hp = 3
  end

  # Reduces hp by 1 when method is called
  def damaged
    @hp = @hp - 1
    end
  
end
