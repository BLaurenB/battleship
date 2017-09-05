require "./lib/instructions.rb"
require "./lib/board.rb"

class Ship

  attr_reader :user_input
  def initialize
    #what should a new ship start out with?
    @user_input
  end

  def valid_coordinates
    ["A1", "A2", "A3," "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
  end

  def row_coordinates
    @row_a = ["A1", "A2", "A3," "A4"]
    @row_b = ["B1", "B2", "B3", "B4"]
    @row_c = ["C1", "C2", "C3", "C4"]
    @row_d = ["D1", "D2", "D3", "D4"]
  end

  def column_coordinates
    @column_1 = ["A1", "B1", "C1", "D1"]
    @column_2 = ["A2", "B2", "C2", "D2"]
    @column_3 = ["A3", "B3", "C3", "D3"]
    @column_4 = ["A4", "B4", "C4," "D4"]
  end

  def valid_ship_coordinates
    valid_ship_coordinates = [
      ["A1", "A2"], ["A2", "A3"], ["A3", "A4"], ["B1", "B2"], ["B2", "B3"], ["B3", "B4"], ["C1", "C2"], ["C2", "C3"], ["C3", "C4"], ["D1", "D2"], ["D2", "D3"], ["D3", "D4"], ["A1", "B1"], ["A2", "B2"], ["A3", "B3"], ["A4", "B4"], ["B1", "C1"], ["B2", "C2"], ["B3", "C3"], ["B4", "C4"], ["C1", "D1"], ["C2", "D2"], ["C3", "D3"], ["C4", "D4"], ["A1", "A3"], ["A2", "A4"], ["B1", "B3"], ["B2", "B4"], ["C1", "C3"], ["C2", "C4"], ["D1", "D3"], ["D2", "D4"], ["A1", "C1"], ["B1", "D1"], ["A2", "C2"], ["B2", "D2"], ["A3", "C3"], ["B3", "D3"], ["A4", "C4"], ["B4", "D4"]
    ]
    #but if using the 2-digit for 3-part ships, need to translate the missing digit for the computer!

  end

  def ship_1_input_too_small_or_large
      # require "pry"; binding.pry
    if @ship_1.length < 4
      return Instructions.ship_1_input_too_small
    elsif @ship_1.length > 4
      return Instructions.ship_1_input_too_large
    else @ship_1.length == 4
      return @ship_1
    end
  end

  def ship_1(user_input)
    @ship_1 = user_input.upcase.delete(" ")
      ship_1_input_too_small_or_large
    @ship_1 = user_input.upcase.delete(" ").scan(/../).to_a
      ship_1_has_valid_coordinates
  end

  def ship_2_input_too_small_or_large
    if @ship_2.length < 6
      return Instructions.ship_2_input_too_small
    elsif @ship_2.length > 6
      return Instructions.ship_2_input_too_large
    else
      return @ship_2
    end
  end

  def ship_2(user_input)
    @ship_2 = user_input.upcase.delete(" ")
      ship_2_input_too_small_or_large
    @ship_2 = user_input.upcase.delete(" ").scan(/../).to_a
      ship_2_has_valid_coordinates
  end

  def ships_cannot_overlap
    ships = @ship_1 << @ship_2
    ships.flatten
    if ships != ships.uniq!
      Instructions.ships_overlap
      # @ship_2 = gets.chomp
    end
  end

  def ship_1_has_valid_coordinates
    if valid_ship_coordinates.include?(@ship_1)
      return @ship_1
    else
      Instructions.ship_out_of_bounds
      # gets
    end
  end

  def ship_2_has_valid_coordinates
    two_digit_ship = []
    two_digit_ship =  @ship_2[0] + @ship_2[2]
    if valid_ship_coordinates.include?(two_digit_ship.scan(/../).to_a)
      return @ship_2
    else
      Instructions.ship_out_of_bounds
      # gets
    end
  end



  # def valid_2_square_combinations
  #   @ship_1[0] == "A1" #this is only for testing
  #   s1 = (@ship_1[0].split(""))[0]
  #   s2 = (@ship_1[1].split(""))[0]
  #   # s3 = (@ship_1[0].split(""))[0]
  #
  #   if s1 == s2
  #     #begin validating againse the row
  #
  #   else
  #     #check for column validation
  #
  #   end
  # end

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
