require "./lib/instructions.rb"


class Board

  attr_reader :name, :title, :user_input

  attr_accessor :board_rows, :row_a, :row_b, :row_c, :row_d

  def initialize(name = "Eugene the Ugly Unicorn", board_title = "default")
    @name = name
    @title = board_title

  end

  def valid_coordinates
    ["A1", "A2", "A3," "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
  end

  def board_rows #tracks the hits and misses when they fire as well as the ship placement at beginning
    #get at the spaces: board_rows[*][coord] = " *"
    [
      {:row_a =>
        [{"A1" => "__"}, {"A2" => "__"},
        {"A3" => "__"}, {"A4" => "__"}]},
      {:row_b =>
        [{"B1" => "__"}, {"B2" => "__"},
        {"B3" => "__"}, {"B4" => "__"}]},
      {:row_c =>
        [{"C1" => "__"}, {"C2" => "__"},
          {"C3" => "__"}, {"C4" => "__"}]},
      {:row_d =>
        [{"D1" => "__"}, {"D2" => "__"},
          {"D3" => "__"}, {"D4" => "__"}]}
    ]
  end

  def print_board
    @row_1 = board.valid_coordinates.map do |coord|
      board_rows[0][:row_a][(coord[1].to_i - 1)][coord]
      #but we need a player board and an ai board.
    end
    @row_2 = board.valid_coordinates.map do |coord|
      board_rows[1][:row_b][0][coord]
    end
    @row_3 = board.valid_coordinates.map do |coord|
      board_rows[2][:row_c][0][coord]
    end
    @row_4 = board.valid_coordinates.map do |coord|
      board_rows[3][:row_d][0][coord]
    end
  end

  def enemy_target_map #maybe interpolate the title since it's all 1 class?
    # print_board
    "#{@title}
    ===========
    . 1 2 3 4
    A #{@row_1}
    B #{@row_2}
    C #{@row_3}
    D #{@row_4}
    ==========="
  end



end



#to print, use this
