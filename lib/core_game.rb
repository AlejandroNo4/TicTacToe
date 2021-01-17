feature-game-logic
class Player
  attr_accessor :name, :char

# frozen_string_literal: false

# Assign the tokens to the players
class Player
  attr_accessor :name, :char

development
  def initialize(player)
    @char = ''
    @name = player
  end
end

feature-game-logic
class CoreTest
  attr_reader :test_res

# Makes the comparison
class CoreTest
  attr_reader :test_res

development
  def initialize
    @lines = [/[1, 2, 3]/, /[4, 5, 6]/, /[7, 8, 9]/,
              /[1, 4, 7]/, /[2, 5, 8]/, /[3, 6, 9]/,
              /[1, 5, 9]/, /[3, 5, 7]/]
    @test_res = false
feature-game-logic
    @x_choices = ''
    @o_choices = ''

    @x_choices = +''
    @o_choices = +''
development
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

feature-game-logic
class Spots
  attr_accessor :pos, :spots_arr, :choice

# Assing the chosen token to its place in the map
class Spots
  attr_accessor :pos, :spots_arr, :choice

development
  def initialize
    @spots_arr = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @ocuped = []
    @choice = 0
  end

  def assign(token)
    @invalid = true
    while @invalid == true
      @choice = gets
feature-game-logic
      if @choice.to_i.zero? || @ocuped.any? { |u| u == @choice } || @choice.to_i.between?(1, 9) == false
        wrong_input
        redo
      else
        @ocuped << @choice
        @spots_arr[@choice.to_i - 1] = token
      end
      return @invalid = false
    end
  end
end

class Start
  attr_writer :player_one, :player_two
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def switch
    @game_spots = Spots.new
    @check_if_win = CoreTest.new

      (unless @choice.to_i.zero? || @ocuped.any? { |u| u == @choice } || @choice.to_i.between?(1, 9) == false
         return acti(token); end)
      wrong_input
      redo
    end
  end

  def acti(token)
    @ocuped << @choice
    @spots_arr[@choice.to_i - 1] = token
    @invalid = false
  end
end

# Runs the classes
class Start
  attr_writer :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @game_spots = Spots.new
    @check_if_win = CoreTest.new
  end

  def switch
development
    between = [@player_one, @player_two].cycle
    i = 0
    while i < 9
      @turn = between.next
      map(@turn.name, @turn.char, @game_spots.spots_arr)
      @check_if_win.checker(@game_spots.choice, @turn.char)
      return winner_msg(@turn.name) if @check_if_win.test_res == true

      i += 1
      tie_message if i == 9
    end
  end
end
