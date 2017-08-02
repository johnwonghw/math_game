require './players'
require './problems'


class Game

  def initialize
    puts "Welcome" 
    puts "Player 1, please insert your name"
    @p1 = Player.new(gets.chomp)
    puts "Player 2, please insert your name"
    @p2 = Player.new(gets.chomp)

    @current_player = @p1
    start
    gameflow
    endgame

  end

  def start
    puts "Player 1, your name is #{@p1.name}"
    puts "Player 2, your name is #{@p2.name}"
    puts "GAME START"
  end

  # Calls the Problem class and places the question in a if statement.
  def turns
    puts "----- NEW TURN -----"
    problem = Problems.new
      puts "#{@current_player.name}: #{problem.question}"
      player_answer = gets.chomp
        if problem.answer_correct(player_answer) 
          puts "Correct!"
          puts "#{@p1.name}: #{@p1.hp}/3 vs #{@p2.name}: #{@p2.hp}/3"
        else 
          puts 'Noop...'
          @current_player.damaged
          puts "#{@p1.name}: #{@p1.hp}/3 vs #{@p2.name}: #{@p2.hp}/3"
        end
  end

  # Switch turn mechanic
  def switch_turns
    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  # Loops the game until a player is at 0 hp
  def gameflow
    while @p1.hp > 0 && @p2.hp > 0 do 
      turns
      switch_turns
    end
  end
  
  # Plays after the gameflow loop is over and also returns the winners name and health
  def endgame
    puts "#{@current_player.name} wins with a score of #{@current_player.hp}"
    puts "----- GAME OVER -----"
    puts "Sorry, you lost"
  end

end

g1 = Game.new
