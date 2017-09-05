require "./lib/instructions.rb"
require "./lib/board.rb"

class Ship

  attr_reader :user_input, :board

  def initialize
    @user_input
    @board = Board.new
  end


  # def ship_1_input_too_small_or_large
  #   if @potential_ship_1.length < 4
  #     return Instructions.ship_1_input_too_small
  #   elsif @potential_ship_1.length > 4
  #     return Instructions.ship_1_input_too_large
  #   else @potential_ship_1.length == 4
  #     return @potential_ship_1
  #   end
  # end
  #
  # def ship_1_to_array
  #   potential_ship_1_array = @potential_ship_1.upcase.delete(" ").scan(/../).to_a
  # end
  #
  # def ship_1_has_valid_coordinates
  #   if board.valid_ship_coordinates.include?(ship_1_to_array)
  #     return ship_1_to_array
  #   else
  #     Instructions.ship_out_of_bounds
  #     # gets
  #   end
  # end
  #
  # def ship_1_coordinate_validation(user_input)
  #   @potential_ship_1 = user_input.upcase.delete(" ")
  #   ship_1_input_too_small_or_large
  #   ship_1_to_array
  #   ship_1_has_valid_coordinates
  #   return @ship_1
  # end
  #
  #
  # def ships_cannot_overlap
  #   ships = @ship_1 << @ship_2
  #   ships.flatten
  #   if ships != ships.uniq!
  #     Instructions.ships_overlap
  #     # @ship_2 = gets.chomp
  #   end
  # end

  def ship_2_input_too_small_or_large
    if @potential_ship_2.length < 4
      return Instructions.ship_2_input_too_small
    elsif @potential_ship_2.length > 4
      return Instructions.ship_2_input_too_large
    else @potential_ship_2.length == 4
      return @potential_ship_2
    end
  end

  def ship_2_to_array
    potential_ship_2_array = @potential_ship_2.upcase.delete(" ").scan(/../).to_a
  end

  def ship_2_has_valid_coordinates
    if board.valid_ship_coordinates.include?(ship_2_to_array)
      return ship_2_to_array
    else
      Instructions.ship_out_of_bounds
      # gets
    end
  end

  def ship_2_coordinate_validation(user_input)
    @potential_ship_2 = user_input.upcase.delete(" ")
    ship_2_input_too_small_or_large
    ship_2_to_array
    ship_2_has_valid_coordinates
    return @ship_2
  end



  # def computer_ship_choice
  #   #needs to pick a random number, then randomly pick NSEW or just hard code a list of valid coords...
  # end





end

=begin
2 ships, 2x1 and 3x1


create an array of valid locations or invalid
be able to compare user input to valid ship locations. then store in a board call to the player's board.


the player's ships should be *

there need to be 2 versions of ships that print
-- if it's the placed_ship_map, it will be *
-- if it's the enemy_target_map, they will only get H or M on the board.


def ship_sunk?
  need method that holds ship hits


=end
