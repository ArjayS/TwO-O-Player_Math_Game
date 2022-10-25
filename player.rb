class Player < Question
  
  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def initiate
    query(name)
    print '> '
    @input = $stdin.gets.chomp
    if @sum == @input.to_i
      puts "#{name}: YES! You are correct!"
    else
      puts "#{name}: Seriously?, NO!"
      lose_life
    end
  end

end