class Game
  attr_accessor :low_limit, :high_limit, :players
  attr_reader :current_player
  
  def initialize (low_limit, high_limit, players)
    @low_limit = low_limit
    @high_limit = high_limit
    @players = players
    @current_player = @players[0]
  end

  def check_answer (num1, num2, ans)
    puts num1+num2
    correct_ans = num1 + num2
    if correct_ans == ans
      self.win
    else
      self.lost
    end
  end

  def game_loop
    number1 = rand(1..20)
    number2 = rand(1..20)
    puts "\n\n\n"
    question = "#{@current_player.name}: What does #{number1} plus #{number2} equal?"
    puts question
    answer = gets.chomp.to_i
    self.check_answer(number1, number2, answer)
  end

  def win    
    puts "Great job!!"
    self.print_score
    self.change_player
  end

  def lost
    puts "Nope. You are wrong."
    @current_player.losen
    self.print_score
    self.change_player
  end

  def change_player
     
    if anyone_won 
      return
    end

    if @current_player == players[0]
      @current_player = players[1]
    else
      @current_player = players[0]
    end
    self.game_loop
  end

  def print_score
    puts "#{players[0].name}: #{players[0].lives}/3  and #{players[1].name}: #{players[1].lives}/3"
  end

  def anyone_won
    if players[1].lives == 0
      puts "\n\n\n"
      puts "#{players[0].name} you won the game by #{players[0].lives}/3. Congratulations!!"
      puts "\n\n\n"
      return true
    end

    if players[0].lives == 0
      puts "\n\n\n"
      puts "#{players[1].name} you won the game by #{players[1].lives}/3. Congratulations!!"
      puts "\n\n\n"
      return true
    end
    return false
  end
end
