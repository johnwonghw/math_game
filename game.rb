require './players'
require './problems'


class Game

# attr_accessor :name

  def initialize
    puts "Welcome" 
    puts "Player 1, please insert your name"
    @p1 = Player.new(gets.chomp)
    puts "Player 2, please insert your name"
    @p2 = Player.new(gets.chomp)

    @turns = @p1
    start
    gameflow
    endgame

  end

  def start
    puts "Player 1, your name is #{@p1.name}"
    puts "Player 2, your name is #{@p2.name}"
    puts "GAME START"
  end

  def turns
    problem = Problems.new
      puts @turns.name, problem.question
      player_answer = gets.chomp
        if problem.answer_correct(player_answer) 
          puts "Got it"
        else 
          puts 'U dying asshole'
          puts "#{@turns.name} #{@turns.damaged}"
        end
  end

  def switch_turns
    if @turns == @p1
      @turns = @p2
    else
      @turns = @p1
    end
  end

  def gameflow
    while @p1.hp > 0 && @p2.hp > 0 do 
      turns
      switch_turns
    end
  end
  
  def endgame
    puts "Sorry, you lost"
  end
  
end

g1 = Game.new

# The Game class will contain the loops of the game as well as the start and end. It will require the other two modules to do so. As this is the "server" of this game, it will keep track of the current_player as well.