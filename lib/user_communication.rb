require "./lib/instructions.rb"


class UI

  attr_accessor :puts_variable

#initiate timer -- when the player presses 'p' for 'p'play.

  def initialize
    #all the things
    @puts_variable

  end

  def cheat
    #if user_input == "c"
    #show computer's board...but mayeb this should be in the board class?
  end


  def instructions
    #may need to be split out into different methods for different parts.
  end

  def welcome #if this doesn't work, paste it back into the END section
    # print "\e[H\e[2J"
    # puts "\n\n\n\nWelcome to BATTLESHIP\n\n\n\nPress ENTER to begin" #for some sort of time period?
    # user_input = gets
    # print "\e[H\e[2J"
  end


  # def ui_initialize
  #   @puts_variable =  "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  #   user_input = gets.chomp
  #
  #   if user_input.downcase == "p"
  #     #stuff
  #   elsif user_input.downcase == "i"
  #     puts instructions
  #   elsif user_input ==
  #     #stuff
  #   else
  #     @puts_variable = "Please try again.\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  #   end
  # end

  def end_game
  end


end


if __FILE__ == $PROGRAM_NAME
  #initialize classes here
  ui = UI.new
  print "\e[H\e[2J"
  puts "\n\n\n\nWelcome to BATTLESHIP\n\n\n\nPress ENTER to begin" #for some sort of time period?
  user_input = gets
  print "\e[H\e[2J"

  puts "#{@puts_variable}"

end
