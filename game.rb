require_relative 'board'
require_relative 'player'

class Game
  attr_accessor :turn, :letter, :win_cond
  attr_reader :board, :player1, :player2, :player1_moves, :player2_moves, :play

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @board = Board.new
    @turn = 1
    @letter = 'X'
    @win_cond = true
  end

  # Game loop
  def play
    instruction
    round_turns = 0
    while round_turns < 9 && win_cond
      if turn.odd?
        self.letter = 'X'
        make_move(player1)
        round_turns += 1
      elsif turn.even?
        self.letter = 'O'
        make_move(player2)
        round_turns += 1
      end
    end

    puts "It's a tie!!" if round_turns >= 9 && self.win_cond = true
  end

  private

  def instruction
    board.instruction_display
  end

  # Checks for Winner
  def winner_check(player)
    string = player.choices.sort.join
    winning_combinations = %w[123 456 789 147 258 369 159 357]
    winning_combinations.each do |element|
      if string.include?(element)
        puts "#{player.name} Wins"
        self.win_cond = false
      end
    end
  end

  def make_move(player)
    # Asks for player to make a move
    puts "#{player.name} make a move!"
    # Loops until move is viable
    while true
      # Gets move from player
      move = gets.chomp.to_i
      if check_move_from_other_player(move) || move < 1 || move > 9
        puts "#{move} is taken! Please enter another move!"
        next
      else
        board.update_board(move, letter)
        player.choices << move
        print player.choices
        winner_check(player) if player.choices.count >= 3
        self.turn += 1
        break
      end
    end
  end

  # Checks other player's move array.
  def check_move_from_other_player(move)
    if turn.odd?
      @player2.choices.include?(move)
    else
      @player1.choices.include?(move)
    end
  end
end
