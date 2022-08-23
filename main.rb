require './players'
require './game'

puts "\n\n"
puts "Register player 1:"
puts "------------------"
puts "What is your name?"
name = gets.chomp
player1 = Players.new(name, 3)
puts "Welcome #{name}!!"
puts "***\n\n\n"

puts "Register player 2:"
puts "------------------"
puts "What is your name?"
name = gets.chomp
player2 = Players.new(name, 3)
puts "Welcome #{name}!!"
puts "***\n\n\n"

puts "Let's play a game!"
game = Game.new(1, 20,[player1, player2])
puts "Game has initialized. Begin!"
game.game_loop