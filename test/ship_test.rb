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

  def test_user_input_to_ship_1
    ship = Ship.new
    input = ship.ship_1("A1 A2")
    output =["A1", "A2"]
    assert_equal output, input
  end

  def test_user_input_to_ship_2
    ship = Ship.new
    input = ship.ship_2("A1 A2 A3")
    output =["A1", "A2", "A3"]
    assert_equal output, input
  end

  def test_it_finds_s1_input_too_small
    ship = Ship.new
    ship.ship_1("A1 A")
    input = ship.ship_1_input_too_small_or_large
    output = "You did not enter enough characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
    D2 D3
    or
    B3 C3"
    assert_equal output, input
  end

  def test_it_finds_s1_input_too_large
    ship = Ship.new
    ship.ship_1("A1 A2 A3 A4")
    input = ship.ship_1_input_too_small_or_large
    output = "You entered too many characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
    D2 D3
    or
    B3 C3"
    assert_equal output, input
  end

  # def test_it_finds_s2_input_too_small
  #   ship = Ship.new
  #   ship.ship_2("A1 A2 A3")
  #   input = ship.ship_2_input_too_small
  #   output ="You did not enter enough characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
  #   D2 D3 D4
  #   or
  #   B3 C3 D3"
  #   assert_equal output, input
  # end
  #
  # def test_it_finds_s2_input_too_large
  #   ship = Ship.new
  #   ship.ship_2("A1 A2 A3")
  #   input = ship.ship_2_input_too_large
  #   output = "You entered too many characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
  #   D2 D3 D4
  #   or
  #   B3 C3 D3"
  #   assert_equal output, input
  # end
  #
  #
  #
  # def test_that_the_order_of_input_doesnt_matter
  #   ship = Ship.new
  #
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end
  #

  # def test_ships_cannot_overlap
  #   ship = Ship.new
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end

  # def test____
  #   ship = Ship.new
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end
end


=begin
test it...
can choose valid ships.
can detect invalid ship entries
 - no spaces, additional punctuation, invalid coordinates,
   -displays correct error messages.

=end
