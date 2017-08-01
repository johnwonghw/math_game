require './players'


class Game

# attr_accessor :name

  def initialize
    puts "Welcome" 
    puts "Player 1, please insert your name"
    @p1 = Player.new(gets.chomp)
    puts "Player 2, please insert your name"
    @p2 = Player.new(gets.chomp)
  end

  def start
    puts "Player 1, your name is #{@p1.name}"
    puts "Player 2, your name is #{@p2.name}"
    puts "GAME START"
  end

end

g1 = Game.new
g1.start
