#!/usr/bin/env ruby
def players
  puts "Hello! who's the player one?, you will play with X."
  p_one = gets
  puts "Cool, and who's going to play with O?"
  p_two = gets
  puts "Nice to meet you #{p_one.chomp} and #{p_two.chomp}. Lets begin!"
  [p_one, p_two]
end
to_play = players 
#in the logic this will be bade with "attr_" in a class 
def start(turn)
  pos = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
  puts "Now #{turn[0].chomp}, it's your turn, choose your position based on a number"
  puts ' 1 | 2 | 3 '
  puts '---+---+---'
  puts ' 4 | 5 | 6 '
  puts '---+---+---'
  puts ' 7 | 8 | 9 '
  puts
  choice = gets
  pos[choice.to_i - 1] = 'X'
  puts "#{turn[0].chomp}, Good choice, this is how it looks like:"
  puts " #{pos[0]} | #{pos[1]} | #{pos[2]} "
  puts '---+---+---'
  puts " #{pos[3]} | #{pos[4]} | #{pos[5]} "
  puts '---+---+---'
  puts " #{pos[6]} | #{pos[7]} | #{pos[8]} "
  puts
  puts "Now #{turn[1].chomp}, your turn, here is the map again"
end 
#The code will repeat from line 10 until the pos line is filled 

def winner(won)
  puts
  puts '##############'
  puts
  puts "Congrats #{won[0].chomp}, YOU WON!!! :D"
  puts
  puts "Congrats #{won[1].chomp}, YOU WON!!! :D"
  puts
  puts "i'm sorry, this is a tie, nobody won :("
end

start(to_play)
winner(to_play)
