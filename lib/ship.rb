require "./lib/instructions.rb"
require "./lib/board.rb"

class Ship

  attr_reader :user_input, :board

  def initialize
    @user_input
    @potential_ship_1
    @potential_ship_2
    @board = Board.new
  end


  def ship_1_input_too_small_or_large
    if @potential_ship_1.length < 4
      Instructions.ship_1_input_too_small
    elsif @potential_ship_1.length > 4
      Instructions.ship_1_input_too_large
    else @potential_ship_1.length == 4
      return @potential_ship_1
    end
  end

  def ship_1_to_array
     @potential_ship_1.upcase.delete(" ").scan(/../).to_a
  end

  def ship_1_has_valid_coordinates
    if board.valid_ship_coordinates.include?(ship_1_to_array)
      return ship_1_to_array
    else
      Instructions.ship_out_of_bounds
      # gets
    end
  end

  def ship_1_coordinate_validation(user_input)
    @potential_ship_1 = user_input.upcase.delete(" ")
    ship_1_input_too_small_or_large
    ship_1_to_array
    ship_1_has_valid_coordinates
  end

    def ship_1
      @ship_1 = ship_1_to_array
    end

  def ship_2_input_too_small_or_large

    if @potential_ship_2.length < 6
      Instructions.ship_2_input_too_small
    elsif @potential_ship_2.length > 6
      Instructions.ship_2_input_too_large
    else
      return @potential_ship_2
    end
  end

  def ship_2_to_array
    @potential_ship_2.upcase.delete(" ").scan(/../).to_a
  end

  def ship_2_has_valid_coordinates
    if board.valid_ship_coordinates.include?(ship_2_to_array)
      return ship_2_to_array #the 3 item array
    else
      return Instructions.ship_out_of_bounds
        # then gets
    end
  end

  def ship_2_coordinate_validation(user_input)
    @potential_ship_2 = user_input.upcase.delete(" ")
    ship_2_input_too_small_or_large
    ship_2_to_array
    ship_2_has_valid_coordinates
  end

  def ship_2
    @ship_2 = ship_2_to_array
  end

  def ships_cannot_overlap
    ships = []
    ships.push(ship_1_to_array)
    ships.push(ship_2_to_array)
    if ships.flatten != ships.flatten.uniq!
      Instructions.ships_overlap
      # @ship_2 = gets.chomp
    end
  end


  def computer_ship_1_choice
    computer_ship_1_choice = board.valid_ship_coordinates.sample
    until computer_ship_1_choice.length == 2
      computer_ship_1_choice = board.valid_ship_coordinates.sample
    end
    return computer_ship_1_choice
  end

  def computer_ship_2_choice
      # require "pry"; binding.pry
    computer_ship_2_choice = board.valid_ship_coordinates.sample
    until computer_ship_2_choice.length == 3
      computer_ship_2_choice = board.valid_ship_coordinates.sample
    end
    return computer_ship_2_choice
  end

  def computer_ships_cannot_overlap
    ships = []
    ships.push(computer_ship_1_choice)
    ships.push(computer_ship_2_choice)
    if ships.flatten != ships.flatten.uniq!
      computer_ship_2_choice
    end
  end






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
