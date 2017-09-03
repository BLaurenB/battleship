gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "./lib/board.rb"

class BoardTest < Minitest::Test

  #what should the board do, be, or know?

  #it should exists
  #it should be able to display values
  #it should be able to take user input
  #It should be able to take 2 or 3 input characters at a time
  #it should have a default name for the character
  #it should take in a name for the player
  #it should do some different things if it's the computer's board...make different class?
  #test the coord start as spaces


  def test_it_exists
    board = Board.new("Bobby")
    assert_instance_of Board, board
  end

  def test_it_has_a_name
    board = Board.new("Bobby")
    assert_equal "Bobby", board.name
  end
    # wizard = Wizard.new("Alex")
    # assert_equal "Alex", wizard.name

  # def test_it
  #   board = Board.new
  #
  #   input =
  #   ouput =
  #
  #   assert... output, input
  # end

  # def test_it
  #   board = Board.new
  #
  #   input =
  #   ouput =
  #
  #   assert... output, input
  # end

  # def test_it
  #   board = Board.new
  #
  #   input =
  #   ouput =
  #
  #   assert... output, input
  # end

  # def test_it
  #   board = Board.new
  #
  #   input =
  #   ouput =
  #
  #   assert... output, input
  # end


end
