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
  
  def turn 
    @player_1.initiate
    @player_2.initiate
  end
end