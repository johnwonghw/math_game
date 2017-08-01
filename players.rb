class Player

  attr_accessor :name
  def initialize (name)
    @name = name
    @hp = 3
  end
  def damaged
    @hp = @hp - 1
    end
end
