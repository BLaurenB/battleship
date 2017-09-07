require "./lib/instructions.rb"


class Battlleship

  
# initializes 4 board-spaces and should all be the same. do names affect how the ships work?
#
# player_ship_board = Board.new
# player_shots_board = Board.new
# ai_ship_board = Board.new
# a1_shots_board = Board.new
#
#
# 4 ships are created
# ship_1, ship_2 (call specific methods)
# ai_ship_1, ai_ship_2 (call specific methods)

end

if __FILE__ == $PROGRAM_NAME
  #initialize classes here
  ui = UI.new
  print "\e[H\e[2J"
  puts "\n\n\n\nWelcome to BATTLESHIP\n\n\n\n\n\n\n\nPress ENTER to begin" #for some sort of time period?
  user_input = gets
  print "\e[H\e[2J"

  puts "#{@puts_variable}"

end
