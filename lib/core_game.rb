# lib/core_game.rb
# Assign the tokens to the players
class Player
  attr_accessor :char
  attr_reader :name

  def initialize(player)
    @char = ''
    @name = player
  end
end

# Makes the comparison
class CoreTest
  attr_accessor :test_res, :x_choices

  def initialize
    @lines = [/[1, 2, 3]/, /[4, 5, 6]/, /[7, 8, 9]/,
              /[1, 4, 7]/, /[2, 5, 8]/, /[3, 6, 9]/,
              /[1, 5, 9]/, /[3, 5, 7]/]
    @test_res = false
    @x_choices = +''
    @o_choices = +''
  end

  def search(collection)
    @test_res = true if @lines.any? { |r| collection.scan(r).length == 3 }
  end

  def checker(number, played_by)
    @x_choices << number if played_by == 'X'
    @o_choices << number if played_by == 'O'
    if @x_choices.length > 3 && played_by == 'X'
      search(@x_choices)
    elsif @o_choices.length > 3
      search(@o_choices)
    end
  end
end

# Assing the chosen token to its place in the board
class Spots
  attr_reader :pos, :spots_arr
  attr_accessor :choice

  def initialize
    @spots_arr = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @taked = []
    @choice = 0
  end

  def valid_char
    @choice = gets
    if @choice.to_i.zero? || @taked.any? { |u| u == @choice } || @choice.to_i.between?(1, 9) == false
      wrong_input
    else
      true
    end
  end

  def assign(token)
    @invalid = true
    valid_char == true ? acti(token) : redo while @invalid == true
  end

  def acti(token)
    @taked << @choice
    @spots_arr[@choice.to_i - 1] = token
    @invalid = false
  end
end

# Runs the classes
class Start
  attr_writer :player_one, :player_two
  attr_accessor :check_if_win, :i

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @game_spots = Spots.new
    @check_if_win = CoreTest.new
    @i = 0
  end

  def switch
    between = [@player_one, @player_two].cycle
    while @i < 9
      @in_turn = between.next
      return winner_msg(@in_turn.name) if @check_if_win.test_res == true

      board(@in_turn.name, @in_turn.char, @game_spots.spots_arr)
      @check_if_win.checker(@game_spots.choice, @in_turn.char)
      @i += 1
      tie_message if @i == 9
    end
  end
end
