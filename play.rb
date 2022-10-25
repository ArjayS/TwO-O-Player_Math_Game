class Play
  
  def initialize(name)
    @name = name
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  end

  def begin
    puts "#{@player_1.name} versus #{@player_2.name}. BEGIN!"
    turn
  end
  
  def statistics
    puts "P1: #{@player_1.life}/3 vs P2: #{@player_2.life}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def score
    if @player_1.no_life
      winner(@player_2)
    elsif @player_2.no_life
      winner(@player_1)
    end
  end

  def turn 
    @player_1.initiate
    statistics
    score
    puts "----- NEW TURN -----"
    @player_2.initiate
    statistics
    score
    puts "----- NEW TURN -----"
    turn
  end

end