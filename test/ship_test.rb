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



  # def test_user_input_to_ship_2
  #   ship = Ship.new
  #   input = ship.ship_2("A1 A2 A3")
  #   output =["A1", "A2", "A3"]
  #   assert_equal output, input
  # end
  #







  # def test_it_can_determine_if_s1_input_too_small
  #   ship = Ship.new
  #   ship.ship_1_coordinate_validation("A1 A")
  #
  #   input = ship.ship_1_input_too_small_or_large
  #   output = "You did not enter enough characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
  #   D2 D3
  #   or
  #   B3 C3"
  #   assert_equal output, input
  # end
  #
  # def test_it_can_determine_if_s1_input_too_large
  #   ship = Ship.new
  #   ship.ship_1_coordinate_validation("A1 A2 A3 A4")
  #
  #   input = ship.ship_1_input_too_small_or_large
  #   output =   "You entered too many characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
  #   D2 D3
  #   or
  #   B3 C3"
  #   assert_equal output, input
  # end
  #
  # def test_it_turns_potential_ship_1_into_array
  #   ship = Ship.new
  #   ship.ship_1_coordinate_validation("A1 A2")
  #
  #   assert_equal ["A1", "A2"], ship.ship_1_to_array
  # end
  #
  # def test_ship_1_has_valid_coordinates
  #   ship = Ship.new
  #   ship.ship_1_coordinate_validation("A1 A2")
  #
  #   assert_equal ["A1", "A2"], ship.ship_1_has_valid_coordinates
  #   end

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
    ship.ship_2_coordinate_validation("A1 A2")

    assert_equal ["A1", "A2"], ship.ship_2_has_valid_coordinates
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


  def test_user_input_passes_all_validation_for_ship_1
    ship = Ship.new
    board = Board.new
    input = ship.ship_1_coordinate_validation("A1 A2")
    output =["A1", "A2"]
    assert_equal output, input
  end

  def test_user_input_passes_all_validation_for_ship_2
    ship = Ship.new
    board = Board.new
    input = ship.ship_2_coordinate_validation("A1 A2 A3")
    output =["A1", "A2", "A3"]
    assert_equal output, input
  end


end


#
# def test____
#   ship = Ship.new
#   input =
#   output =
#
#   assert___ output, input
# end
