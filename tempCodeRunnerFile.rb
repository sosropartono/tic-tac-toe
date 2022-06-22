
    def player_choice_check(other_player)
        if other_player.player_moves.include(self.player_choice)
            puts "Please select another number"
            true
        end
    end
