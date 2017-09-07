require "./lib/instructions.rb"
require "./lib/board.rb"

class Ship

  attr_reader :user_input, :board, :s1, :s2

  def initialize
    @user_input
    @potential_ship_1
    @potential_ship_2
    @board = Board.new # this is problematic for creating 4 different boards. if I name them all differently, how to call and update them?
    @s1 = s1
    @s2 = s2
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
    two_coord_ships = []
    two_coord_ships = valid_ship_coordinates.find_all do |coords|
      coords.length == 2
    end
    two_coord_ships.sample
  end

  def ai_ship_2_choice
    three_coord_ships = []
    three_coord_ships = valid_ship_coordinates.find_all do |coords|
      coords.length == 3
    end
    three_coord_ships.sample
  end

  def ai_ships_cannot_overlap
    ships = []
    ships.push(ai_ship_1_choice)
    ships.push(ai_ship_2_choice)
    while ships.flatten != ships.flatten.uniq
      three_coord_ships = valid_ship_coordinates.find_all do |coords|
        coords.length == 3
      end
      three_coord_ships = three_coord_ships.sample
      ships = []
      ships.push(ai_ship_1_choice)
      ships.push(three_coord_ships)
    end
     ai_ship_2_choice = three_coord_ships
  end

  def ai_ship_2_has_3_valid_coordinates
    ai_ship_2_choice
    ai_ships_cannot_overlap
  end

  def ai_ship_coordinate_validation
    ai_ship_2_choice
  end

  def ai_place_ships_on_board
    @s1 = ai_ship_1_choice
    @s2 = ai_ship_2_has_3_valid_coordinates
    place_ships_on_board
  end

  def player_place_ships_on_board
    @s1 = ship_1
    @s2 = ship_2
    place_ships_on_board
  end


  def send_ships_to_board #does this belong on board class or UI class?
    all_ships  = []
    all_ships  =  @s1.push(@s2)
    all_ships = all_ships.flatten
    # all_ships.each do |coord|
    #   # require "pry"; binding.pry;
    #   if coord[0] == "A"
    #     board.board_rows[0][:row_a][((coord[1]).to_i - 1)][coord] = " *"
    #     return
    #   elsif coord[0] == "B"
    #     board.board_rows[1][:row_b][((coord[1]).to_i - 1)][coord] = " *"
    #     return
    #   elsif coord[0] == "C"
    #     board.board_rows[2][:row_c][((coord[1]).to_i - 1)][coord] = " *"
    #     return
    #   else coord[0] == "D"
    #     board.board_rows[3][:row_d][((coord[1]).to_i - 1)][coord] = " *"
    #     return
    #   end
    #   board.print_board
    # end
  end




end



=begin

there need to be 2 versions of ships that print
-- if it's the placed_ship_map, it will be *
-- if it's the enemy_target_map, they will only get H or M on the board.


def ship_sunk?
  need method that holds ship hits


=end
