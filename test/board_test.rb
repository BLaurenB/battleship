gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "./lib/board.rb"
require "./lib/ship.rb"
require "./lib/instructions.rb"

class BoardTest < Minitest::Test

  #what should the board do, be, or know?


  #it should be able to display values
  #it should be able to take user input
  #It should be able to take 2 or 3 input characters at a time


  #it should do some different things if it's the computer's board...make different class?



  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_it_has_a_name
    board = Board.new
    assert_equal "Eugene the Ugly Unicorn", board.name
  end

  def test_it_has_a_diferent_name
    board = Board.new("Bobby")
    assert_equal "Bobby", board.name
  end

  def test_coordinates_default_to_space
    board = Board.new
    output =
    board.a1 && board.a2 && board.a3 && board.a4
    board.b1 && board.b2 && board.b3 && board.b4
    board.c1 && board.c2 && board.c3 && board.c4
    board.d1 && board.d2 && board.d3 && board.d4
    assert_equal " ", output
  end

  def test_a1_defaults_to_space
    board = Board.new
    assert_equal " ", board.a1
  end

  def test_it_can_update_enemy_map
    board = Board.new


    assert_equal " H", board.a1
  end




  # def test_enemy_target_map_interpolates
  #   board = Board.new(name, "H")
  #   input = board.interpolation
  #   output = "H"
  #   assert_equal output, input


  def test_enemy_target_map_interpolates
    board = Board.new(name, "H")
    input = board.enemy_target_map
    output =
    "FIRE AT ENEMY SHIPS!
    ===========
    . 1 2 3 4
    A H
    B
    C
    D
    ==========="

    assert_equal output, input
  end


  # def test_it
  #   board = Board.new
  #
  #   input =
  #   output =
  #
  #   assert... output, input
  # end
  # def test_it
  #   board = Board.new
  #
  #   input =
  #   output =
  #
  #   assert... output, input
  # end
  # def test_it
  #   board = Board.new
  #
  #   input =
  #   output =
  #
  #   assert... output, input
  # end

end
