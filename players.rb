class Player

  attr_accessor :name, :hp
  def initialize (name)
    @name = name
    @hp = 3
  end

  def damaged
    @hp = @hp - 1
    end
  
end


# this class will contain the methods in creating players and also reducing player life by 1. Because we are giving each player a name, we would need to have attr_reader for name. 