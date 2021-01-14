#!/usr/bin/env ruby
def start
  pos = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
  puts "Hello! who's the player one?, you will play with X."
  p_one = gets
  puts "Cool, and who's going to play with O?"
  p_two = gets
  puts "Nice to meet you #{p_one.chomp} and #{p_two.chomp}. Lets begin!"
  puts
  puts "Now #{p_one.chomp}, it's your turn, choose your position based on a number"
  puts
  puts ' 1 | 2 | 3 '
  puts '---+---+---'
  puts ' 4 | 5 | 6 '
  puts '---+---+---'
  puts ' 7 | 8 | 9 '
  puts
  choice = gets
  pos[choice.to_i - 1] = "X"
  puts "#{p_one.chomp}, Good choice, this is how it looks like:"
  puts " #{pos[0]} | #{pos[1]} | #{pos[2]} "
  puts '---+---+---'
  puts " #{pos[3]} | #{pos[4]} | #{pos[5]} "
  puts '---+---+---'
  puts " #{pos[6]} | #{pos[7]} | #{pos[8]} "
  puts
  puts "Now #{p_two.chomp}, your turn, here is the map again" #The code will repeat from line 10 until the pos line is filled
  puts
  puts '##############'
  puts
  puts "Congrats #{p_one.chomp}, YOU WON!!! :D"
  puts
  puts "Congrats #{p_two.chomp}, YOU WON!!! :D"
  puts
  puts "i'm sorry, this is a tie, nobody won :("
end

start
