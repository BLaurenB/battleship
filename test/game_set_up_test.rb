gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "minitest/pride"
require "./lib/board.rb"
require "./lib/ships.rb"
require "./lib/user_communication.rb"
require "./lib/shot_sequence.rb"

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
