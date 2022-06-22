class Player 

    attr_accessor :name, :choices
    @@player_count = 1
    def initialize
        puts "Please enter a name for Player #{@@player_count}"
        @name = gets.chomp
        @choices = []
        @@player_count += 1
    end


    def make_move(other_player)
        while true 
        choice =  "#{self.name} Enter a number 1 - 9"
        if check_other_player_array(choice, other_player)
            next
        else
            self.choices << choice
        end
    end
    end

    private
    def check_other_player_array(choice, other_player)
        if other_player.choices.find(choice)
            true
        else
            false
        end
    end



end