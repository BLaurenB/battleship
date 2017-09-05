gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "minitest/pride"
require "./lib/game_set_up.rb"
require "./lib/board.rb"
require "./lib/ships.rb"
require "./lib/user_communication.rb"
require "./lib/shot_sequence.rb"
require "./lib/instructions.rb"


class GameSetUpTest < Minitest::Test

  def test_it_exists
    game_set_up = GameSetUp.new
    assert_instance_of GameSetUp, game_set_up
  end

  # def test_computer can choose_valid_ships
  #   game_set_up = GameSetUp.new
  #   ship_1 = Ships.new

  #   input = ships.computer_ship_choice
  #   output =
  #
  #   assert___ output, input
  # end

  # def test___
  #   game_set_up = GameSetUp.new
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end

  # def test___
  #   game_set_up = GameSetUp.new
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end

  # def test___
  #   game_set_up = GameSetUp.new
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end

  # def test___
  #   game_set_up = GameSetUp.new
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end


end


=begin
Things to test for

player has a name
player has a board
player has ships

player can input valid ships

player is warned when using invalid ships

computer has a board
computer can place valid ships












=end
