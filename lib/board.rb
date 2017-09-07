require "./lib/instructions.rb"
require "./lib/ship.rb"


class Board

  attr_reader :name, :title, :user_input
  attr_accessor :board_rows, :row_a, :row_b, :row_c, :row_d

  def initialize(player_name = "Eugene the Ugly Unicorn", board_title = "default")
    @name = player_name
    @title = board_title
  end

  def valid_coordinates
    ["A1", "A2", "A3," "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
  end

  def board_rows #tracks the hits and misses when they fire as well as the ship placement at beginning
    #get at the spaces: board_rows[*][coord] = " *"
    [
      {:row_a =>
        [{"A1" => "  "}, {"A2" => "  "},
        {"A3" => "  "}, {"A4" => "  "}]},
      {:row_b =>
        [{"B1" => "  "}, {"B2" => "  "},
        {"B3" => "  "}, {"B4" => "  "}]},
      {:row_c =>
        [{"C1" => "  "}, {"C2" => "  "},
          {"C3" => "  "}, {"C4" => "  "}]},
      {:row_d =>
        [{"D1" => "  "}, {"D2" => "  "},
          {"D3" => "  "}, {"D4" => "  "}]}
    ]
  end

  def place_ships_on_board
    # ship = Ship.new # problmatic for multip ships and multi boards
    # ship.ai_place_ships_on_board
    ships.send_ships_to_board
    all_ships.each do |coord|
    # require "pry"; binding.pry;
      if coord[0] == "A"
        board.board_rows[0][:row_a][((coord[1]).to_i - 1)][coord] = " *"
        return
      elsif coord[0] == "B"
        board.board_rows[1][:row_b][((coord[1]).to_i - 1)][coord] = " *"
        return
      elsif coord[0] == "C"
        board.board_rows[2][:row_c][((coord[1]).to_i - 1)][coord] = " *"
        return
      else coord[0] == "D"
        board.board_rows[3][:row_d][((coord[1]).to_i - 1)][coord] = " *"
        return
      end
    end
  end

  def print_board
    # require "pry"; binding.pry
    @row_1 = board.valid_coordinates.map do |coord|
      board_rows[0][:row_a][(coord[1].to_i - 1)][coord]
      #but we need a player board and an ai board.
    end
    @row_2 = board.valid_coordinates.map do |coord|
      board_rows[1][:row_b][(coord[1].to_i - 1)][coord]
    end
    @row_3 = board.valid_coordinates.map do |coord|
      board_rows[2][:row_c][(coord[1].to_i - 1)][coord]
    end
    @row_4 = board.valid_coordinates.map do |coord|
      board_rows[3][:row_d][0][(coord[1].to_i - 1)][coord]
    end
  end

  def map #maybe interpolate the title since it's all 1 class?
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
