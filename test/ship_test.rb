gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "minitest/pride"
require "./lib/board.rb"
require "./lib/ship.rb"
require "./lib/user_communication.rb"
require "./lib/shot_sequence.rb"
require "./lib/instructions.rb"


class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end

  def test_it_can_determine_if_s1_input_too_small
    ship = Ship.new
    ship.ship_1_coordinate_validation("A1 A")

    input = ship.ship_1_input_too_small_or_large
    output = "You did not enter enough characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
    D2 D3
    or
    B3 C3"
    assert_equal output, input
  end

  def test_it_can_determine_if_s1_input_too_large
    ship = Ship.new
    ship.ship_1_coordinate_validation("A1 A2 A3 A4")

    input = ship.ship_1_input_too_small_or_large
    output =   "You entered too many characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
    D2 D3
    or
    B3 C3"
    assert_equal output, input
  end

  def test_it_turns_potential_ship_1_into_array
    ship = Ship.new
    ship.ship_1_coordinate_validation("A1 A2")

    assert_equal ["A1", "A2"], ship.ship_1_to_array
  end

  def test_ship_1_has_valid_coordinates
    ship = Ship.new
    ship.ship_1_coordinate_validation("A1 A2")

    assert_equal ["A1", "A2"], ship.ship_1_has_valid_coordinates
    end

  def test_it_can_determine_if_s2_input_too_small
    ship = Ship.new
    ship.ship_2_coordinate_validation("A1 A")

    input = ship.ship_2_input_too_small_or_large
    output =   "You did not enter enough characters. Enter your choice as shown below. Example:
    D2 D3 D4
    or
    B3 C3 D3"
    assert_equal output, input
  end

  def test_it_can_determine_if_s2_input_too_large
    ship = Ship.new
    ship.ship_2_coordinate_validation("A1 A2 A3 A4")

    input = ship.ship_2_input_too_small_or_large
    output = "You entered too many characters. Enter your choice as shown below. Example:
    D2 D3 D4
    or
    B3 C3 D3"
    assert_equal output, input
  end

  def test_it_turns_potential_ship_2_into_array
    ship = Ship.new
    ship.ship_2_coordinate_validation("A1 A2")

    assert_equal ["A1", "A2"], ship.ship_2_to_array
  end

  def test_ship_2_has_valid_coordinates
    ship = Ship.new
    ship.ship_2_coordinate_validation("A1 A2 A3")
    ship.ship_2_to_array

    assert_equal ["A1", "A2", "A3"], ship.ship_2_coordinate_validation("A1 A2 A3")
  end


  def test_returns_error_if_user_inputs_invalid_coordinates
    ship = Ship.new
    ship.ship_1_coordinate_validation("A1 F5")
    input = ship.ship_1_has_valid_coordinates
    output = "You entered a coordinate that is outside the bounds of this board.\nEnter your coordinates again."

    assert_equal output, input
  end

  def test_returns_error_if_user_inputs_invalid_coordinates_ship_2
    ship = Ship.new
    ship.ship_2_coordinate_validation("A1 GO CU")
    input = ship.ship_2_has_valid_coordinates
    output = "You entered a coordinate that is outside the bounds of this board.\nEnter your coordinates again."
    assert_equal output, input
  end

  def test_ships_cannot_overlap
    ship = Ship.new
    ship.ship_1_coordinate_validation("A1 A2")
    ship.ship_2_coordinate_validation("A1 B1 C1")
    ships = ["A1", "A2", "A1", "B1", "C1"]
    input = ship.ships_cannot_overlap
    output = "Your ships cannot overlap. Please re-enter all values for your 3x1 ship."
    assert_equal output, input
  end


  def test_user_input_passes_all_validation_for_ship_1
    ship = Ship.new
    board = Board.new
    input = ship.ship_1_coordinate_validation("A1 A2")
    output =["A1", "A2"]
    assert_equal output, input
  end

  def test_user_input_passes_all_validation_for_ship_2
    ship = Ship.new
    ship.ship_2_coordinate_validation("A1 A2 A3")

    input = ship.ship_2_coordinate_validation("A1 A2 A3")
    output = ["A1", "A2", "A3"]

    assert_equal output, input
  end

#------------------------
#ai chooses. Also need to test that ship choice and ship sinking can affect the board
#------------------------

  def test_ai_can_select_ship_1_coordinates
    ship = Ship.new
    board = Board.new
    ship.ai_ship_1_choice

    assert ship.ai_ship_1_choice.length == 2
  end

  def test_ai_can_select_ship_2_coordinates
    ship = Ship.new
    board = Board.new
    refute ship.ai_ship_2_choice == ship.ai_ship_1_choice
  end

  def test_ai_does_not_overlap_ships
    ship = Ship.new
    ship.ai_ship_2_choice
    ship.ai_ship_1_choice
    ship.ai_ships_cannot_overlap

    refute ship.ai_ship_2_choice.include?(ship.ai_ship_1_choice[0]) && ship.ai_ship_2_choice.include?(ship.ai_ship_1_choice[1])
  end

  def test_ai_can_update_board_rows
    ship = Ship.new
    ship.place_ships_on_board.s1 = ["A1", "A2"]
    ship.place_ships_on_board.s2 = ["A3", "B3", "C3"]

    input =  ship.place_ships_on_board
    output =     [
          {:row_a =>
            [{"A1" => "_*"}, {"A2" => "_*"},
            {"A3" => "_*"}, {"A4" => "__"}]},
          {:row_b =>
            [{"B1" => "__"}, {"B2" => "__"},
            {"B3" => "_*"}, {"B4" => "__"}]},
          {:row_c =>
            [{"C1" => "__"}, {"C2" => "__"},
              {"C3" => "_*"}, {"C4" => "__"}]},
          {:row_d =>
            [{"D1" => "__"}, {"D2" => "__"},
              {"D3" => "__"}, {"D4" => "__"}]}
        ]
    assert_equal output, input
  end


end



# def test____
#   ship = Ship.new
#   input =
#   output =
#
#   assert___ output, input
# end
