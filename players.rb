class Players 
  attr_accessor :name, :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_a_life
    @lives = @lives - 1
  end
end