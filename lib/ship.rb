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

  def valid_ship_coordinates
    valid_ship_coordinates = [["A1", "A2"], ["A2", "A3"],
    ["A3", "A4"], ["B1", "B2"], ["B2", "B3"], ["B3", "B4"],
    ["C1", "C2"], ["C2", "C3"], ["C3", "C4"], ["D1", "D2"],
    ["D2", "D3"], ["D3", "D4"], ["A1", "B1"], ["A2", "B2"],
    ["A3", "B3"], ["A4", "B4"], ["B1", "C1"], ["B2", "C2"],
    ["B3", "C3"], ["B4", "C4"], ["C1", "D1"], ["C2", "D2"],
    ["C3", "D3"], ["C4", "D4"], ["A1", "A2", "A3"],
    ["A2", "A3", "A4"], ["B1", "B1", "B3"],
    ["B2", "B3", "B4"], ["C1", "C1", "C3"],
    ["C2", "C3", "C4"], ["D1", "D2", "D3"],
    ["D2", "D2", "D4"], ["A2", "B2", "C2"],
    ["B2", "C2", "D2"], ["A4", "B4", "C4"],
    ["B4", "C4", "D4"]
    ]
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
    if valid_ship_coordinates.include?(ship_1_to_array)
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
    if valid_ship_coordinates.include?(ship_2_to_array)
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


  def ai_ship_1_choice
    ai_ship_1_choice = valid_ship_coordinates.sample
    until ai_ship_1_choice.length == 2
      ai_ship_1_choice = valid_ship_coordinates.sample
    end
    return ai_ship_1_choice
  end

  def ai_ship_2_choice
      # require "pry"; binding.pry
    ai_ship_2_choice = valid_ship_coordinates.sample
    until ai_ship_2_choice.length == 3
      ai_ship_2_choice = valid_ship_coordinates.sample
    end
    return ai_ship_2_choice
  end

  def ai_ships_cannot_overlap
    ships = []
    ships.push(ai_ship_1_choice)
    ships.push(ai_ship_2_choice)
    if ships.flatten != ships.flatten.uniq!
      ai_ship_2_choice
    end
  end

  def ai_place_ships_on_board
    s1 = ai_ship_1_choice
    s2 = ai_ship_2_choice
    place_ships_on_board(s1, s2)
  end

  def player_place_ships_on_board
    s1 = ship_1
    s2 = ship_2
    place_ships_on_board(s1, s2)
  end


  def place_ships_on_board #does this belong on board class or UI class?
    all_ships = (s1 << s2).flatten
     all_ships.each do |coord|
       if coord[0] == "A"
        board.board_rows[0][:row_a][0][coord] = " *"
      elsif coord[0] == "B"
        board.board_rows[1][:row_b][0][coord] = " *"
      elsif coord[0] == "C"
        board.board_rows[2][:row_c][0][coord] = " *"
      else coord[0] == "D"
        board.board_rows[3][:row_d][0][coord] = " *"
      end
    end
  end




=begin
things to try.
 - a .each that compares the element to the hash. if a hash match is found, perform a separate update/replacement of values





=end






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
