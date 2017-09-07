gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "./lib/board.rb"
require "./lib/ship.rb"
require "./lib/instructions.rb"

class BoardTest < Minitest::Test

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

  def test_A1_defaults_to_space
    board = Board.new
    assert_equal "  ", board.board_rows[0][:row_a][0]["A1"]
  end

  def test_D4_defaults_to_space
    board = Board.new
    assert_equal "  ", board.board_rows[3][:row_d][3]["D4"]
  end

  def test_it_can_update_map_with_ships
    board = Board.new
    ship = Ship.new
    ship.ai_place_ships_on_board



    assert_equal " *", board.place_ships_on_board
  end

  # def test_it_can_update_map_with_misses
  #   board = Board.new
  #   shot_sequence.shots_fired[coordinate]
  #
  #   assert_equal " M", [coordinate]
  # end
  # #
  #
  # def test_it_can_update_map_with_hits
  #   board = Board.new
  #   shot_sequence.shots_fired[coordinate]
  #
  #   assert_equal " H", [coordinate]
  # end
  # #
  # def test_enemy_target_map_interpolates
  #   board = Board.new(name, "H")
  #   input = board.enemy_target_map
  #   output =
  #   "FIRE AT ENEMY SHIPS!
  #   ===========
  #   . 1 2 3 4
  #   A H
  #   B
  #   C
  #   D
  #   ==========="
  #
  #   assert_equal output, input
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
  # def test_it
  #   board = Board.new
  #
  #   input =
  #   output =
  #
  #   assert... output, input
  # end

end
