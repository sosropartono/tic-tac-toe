require_relative "player"
require_relative "board"
require_relative "game"


#starting game
game = Game.new
while true
    puts "Did you want to play another?"
    answer = gets.chomp
    if answer.downcase == "no"|| answer.downcase == "n"
        break
    else
        game = Game.new
        game.play
    end
end
        