class Board
  attr_accessor :game_array

  def initialize
    @game_array = Array.new(9, '_')
  end

  def instruction_display
    puts 'The grid is ordered in this way'
    puts '| 1 2 3 |'
    puts '| 4 5 6 |'
    puts '| 7 8 9 |'
  end

  def update_board(move, letter)
    move -= 1
    @game_array[move] = letter
    display_board
  end

  private

  def display_board
    puts "| #{@game_array[0]} #{@game_array[1]} #{@game_array[2]} |"
    puts "| #{@game_array[3]} #{@game_array[4]} #{@game_array[5]} |"
    puts "| #{@game_array[6]} #{@game_array[7]} #{@game_array[8]} |"
  end
end
