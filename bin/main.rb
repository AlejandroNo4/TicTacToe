#!/usr/bin/env ruby

require_relative '../lib/core_game'
def wrong_input
  puts "I'm sorry, please choose a valid input:"
  puts '- Must to be a number between 1 and 9'
  puts '- Must to be a free space'
end

def winner_msg(name)
  puts "Congrats #{name.chomp} you have WON!!! :D"
end

def tie_message
  puts "I'm sorry, this was a tie, good luck next time :)"
end

def map(in_turn, token, pos)
  puts "Now #{in_turn.chomp}, it's your turn, choose wisely \n\n"
  puts " 1 | 2 | 3             #{pos[0]} | #{pos[1]} | #{pos[2]} "
  puts '---+---+---           ---+---+---'
  puts " 4 | 5 | 6             #{pos[3]} | #{pos[4]} | #{pos[5]} "
  puts '---+---+---           ---+---+---'
  puts " 7 | 8 | 9             #{pos[6]} | #{pos[7]} | #{pos[8]} \n\n"
  @game_spots.assign(token)
end

def game_setting
  puts "Hello! who's the player one?, you will play as X.\n\n"
  first = Player.new(gets)
  first.char = 'X'
  puts "Cool, and who's going to play as O?\n\n"
  second = Player.new(gets)
  second.char = 'O'
  puts "Nice to meet you #{first.name.chomp} and #{second.name.chomp}. Lets begin!\n\n"
  playing = Start.new(first, second)
  playing.switch
end

game_setting
