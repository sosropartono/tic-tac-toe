class Player
  attr_accessor :choices
  attr_reader :name

  @@player_count = 1
  def initialize
    puts "Please enter a name for Player #{@@player_count}"
    @name = gets.chomp
    @choices = []
    @@player_count += 1
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
