#!/usr/bin/env ruby
require_relative '../lib/core_game.rb'
class Player
  attr_accessor :name, :char
  def initialize(char)
    @char = char
  end

  def start
    puts "Hello, what's your player name?"
    @name = gets
    puts "#{@name.chomp}, you will play as #{@char} \n\n"
    puts
  end
end

first = Player.new('X')
first.start
second = Player.new('O')
second.start

class GameDisplay
  attr_accessor :position, :pos, :repeated
  def initialize
    @pos = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @position = 0
    @choosed = []
  end

  def maps(current_ply)
    @name = current_ply[0]
    @character = current_ply[1]
    puts "Now #{@name.chomp}, it's your turn, choose wisely \n\n"
    puts " 1 | 2 | 3             #{@pos[0]} | #{@pos[1]} | #{@pos[2]} "
    puts '---+---+---           ---+---+---'
    puts " 4 | 5 | 6             #{@pos[3]} | #{@pos[4]} | #{@pos[5]} "
    puts '---+---+---           ---+---+---'
    puts " 7 | 8 | 9             #{@pos[6]} | #{@pos[7]} | #{@pos[8]} \n\n"
    @is_valid = false
    while @is_valid == false
      @position = gets
      if @position.to_i.zero? || @choosed.any? { |u| u == @position } || @position.to_i.between?(1, 9) == false
        puts "Wait! Please enter a valid number\n"
        redo
      else
        @choosed << @position
        @pos[position.to_i - 1] = @character
      end
      return @is_valid = true
    end
  end
end

class Start
  attr_accessor :player_one, :player_two, :turn
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def switch
    between_this = [@player_one, @player_two].cycle
    @round = GameDisplay.new
    @check_if_win = CoreTest.new
    i = 0
    while i < 9
      @turn = between_this.next
      @round.maps(@turn)
      @check_if_win.checker(@round.position, @turn[1])
      return puts "#{@turn[0].chomp} WON!!! :D" if @check_if_win.test_res == true

      i += 1
      puts 'Tis is a tie, sorry' if i == 9
    end
  end
end

game = Start.new([first.name, first.char], [second.name, second.char])

game.switch
