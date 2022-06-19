class Game 
    @@rounds = 0

    
    def initialize
        @players = []
        @@rounds += 1
        @game_array = Array.new(3) {Array.new(3, "-")}
    end

    def add_player(player)
        display_board
        self.players << player
        puts self.players
    end 

    private
    attr_accessor :players 
    def display_board
        puts "|#{@game_array[0][0]} #{@game_array[0][1]} #{@game_array[0][2]}|"
        puts "|#{@game_array[1][0]} #{@game_array[1][1]} #{@game_array[1][2]}|"
        puts "|#{@game_array[2][0]} #{@game_array[2][1]} #{@game_array[2][2]}|"
    end





    def move(player)


    end
end

class Player
    def initialize(name, letter_chosen)
        @name = name
        @letter_chosen = letter_chosen


    end

end


will = Player.new("william", "B")
game1 = Game.new
game1.add_player(will)
game1.display_board
