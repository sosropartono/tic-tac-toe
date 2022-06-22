require_relative "board"
require_relative "player"

class Game
    attr_reader :board, :player1,  :player2, :player1_moves, :player2_moves, :play

    def initialize
        @player1 = Player.new
        @player2 = Player.new
        @board = Board.new
        @turn = 1

    end

    
    def play 
        
        
        #while 
        if turn % 0 == 1
            self.make_move(player1)
        else
            self.make_move(player2)


    # def accessing_player
    #     self.player1.name


    # end

    def instruction
        puts "The grid is ordered in this way"
        puts board.start_display
    end


    private
    def make_move(player)
        puts "#{player.name} make a move!"
        while true
            move = gets.chomp
            if check_move(move)
                next
            else
                board.update_board(move)
                player.choices << move
                turn += 1
                break
            end
        end
    end

        

        
    end
    
    def check_move(move)
        if turn % 2 == 1
            @player2.choices.include(move)

        else
            @player1.choices.include(move)
        @player.choices.include

    end

    # def check_other_player_array()



    # end


        

end

game = Game.new
# game.board.display_board
game.player1.accessing_player
