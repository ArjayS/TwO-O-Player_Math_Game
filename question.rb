class Question

  def query(name)
    puts "#{name}: What does #{@num1} plus #{@num2} equal?"
  end

  def lose_life
    @life -= 1
  end

  def no_life
    @life == 0
  end
  
end