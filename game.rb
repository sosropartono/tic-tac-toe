require_relative "board"
require_relative "player"


class Game
    attr_reader :board, :player1,  :player2, :player1_moves, :player2_moves, :play, :turn, :letter
    attr_writer :turn, :letter

    def initialize
        @player1 = Player.new
        @player2 = Player.new
        @board = Board.new
        @turn = 1
        @letter = "X"
    end

    def instruction
        board.instruction_display
    end



    # Game loop
    def play 
        self.instruction()
        round_turns = 0
        while round_turns < 9 || winner_check
        if self.turn % 2 == 1
            self.make_move(player1)
            self.letter = "X"
            round_turns += 1
        else
            self.make_move(player2)
            self.letter = "O"
            round_turns += 1
        end

        puts "It's a tie!!"
    end
end




    


    # private 
    # def winner_check
    #     winning_combinations = [123,146,258,369]


    # end

    private
    def make_move(player)
        # asks for player to make a move
        puts "#{player.name} make a move!"
        # loops until move is viable
        while true
            # gets move from player
            move = gets.chomp.to_i
            if check_move_from_other_player(move)
                puts "#{move} is taken! Please enter another move!"
                next
            else
                board.update_board(move,letter)
                player.choices << move
                self.turn += 1
                break
            end
        end
    end

        

        


    # Checks other player's move array.
    def check_move_from_other_player(move)
        if turn % 2 == 1
            @player2.choices.include?(move)
        else
            @player1.choices.include?(move)
        end

    end
end



