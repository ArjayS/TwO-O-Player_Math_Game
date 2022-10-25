class Player < Question
  
  attr_reader :name

  def initialize(name)
    @name = name
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def initiate
    query(name)
    print '> '
    @input = $stdin.gets.chomp
    if @sum == @input.to_i
      puts "YES! You are correct!"
    else
      puts "Seriously?, NO!"
    end
  end

end