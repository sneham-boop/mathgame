class Players 
  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def losen
    @lives = @lives - 1
  end
end