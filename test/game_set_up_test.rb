gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "minitest/pride"
require "./lib/board.rb"
require "./lib/ships.rb"
require "./lib/user_communication.rb"
require "./lib/shot_sequence.rb"
require "./data/instructions.rb"


class GameSetUpTest < Minitest::Test

  def test___
    game_set_up = GameSetUp.new
    assert_instance_of GameSetUp, game_set_up
  end

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
