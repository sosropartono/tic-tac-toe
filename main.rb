require_relative 'player'
require_relative 'board'
require_relative 'game'

# Tic Tac Toe Starting Point
game = Game.new
game.play
while true
  puts 'Did you want to play another?'
  answer = gets.chomp
  if answer.downcase == 'no' || answer.downcase == 'n'
    puts 'Game Over!'
    break
  else
    game = Game.new
    game.play
  end
end
