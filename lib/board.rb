require "./lib/instructions.rb"


class  Board

  attr_reader :name, :user_input, :a1, :a2, :a3, :a4, :b1, :b2, :b3, :b4, :c1, :c2, :c3, :c4, :d1, :d2, :d3, :d4

  def initialize(name = "Eugene the Ugly Unicorn")
    @name = name
    @user_input = ""
    @a1, @a2, @a3, @a4 = " ", " ", " ", " "
    @b1, @b2, @b3, @b4 = " ", " ", " ", " "
    @c1, @c2, @c3, @c4 = " ", " ", " ", " "
    @d1, @d2, @d3, @d4 = " ", " ", " ", " "
  end

  def valid_coordinates
    ["A1", "A2", "A3," "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
  end

  def row_coordinates
    @row_a = ["A1", "A2", "A3", "A4"]
    @row_b = ["B1", "B2", "B3", "B4"]
    @row_c = ["C1", "C2", "C3", "C4"]
    @row_d = ["D1", "D2", "D3", "D4"]
  end

  def column_coordinates
    @column_1 = ["A1", "B1", "C1", "D1"]
    @column_2 = ["A2", "B2", "C2", "D2"]
    @column_3 = ["A3", "B3", "C3", "D3"]
    @column_4 = ["A4", "B4", "C4", "D4"]
  end

  def valid_ship_coordinates
    valid_ship_coordinates = [["A1", "A2"], ["A2", "A3"],
    ["A3", "A4"], ["B1", "B2"], ["B2", "B3"], ["B3", "B4"],
    ["C1", "C2"], ["C2", "C3"], ["C3", "C4"], ["D1", "D2"],
    ["D2", "D3"], ["D3", "D4"], ["A1", "B1"], ["A2", "B2"],
    ["A3", "B3"], ["A4", "B4"], ["B1", "C1"], ["B2", "C2"],
    ["B3", "C3"], ["B4", "C4"], ["C1", "D1"], ["C2", "D2"],
    ["C3", "D3"], ["C4", "D4"], ["A1", "A2", "A3"],
    ["A2", "A3", "A4"], ["B1", "B1", "B3"],
    ["B2", "B3", "B4"], ["C1", "C1", "C3"],
    ["C2", "C3", "C4"], ["D1", "D2", "D3"],
    ["D2", "D2", "D4"], ["A2", "B2", "C2"],
    ["B2", "C2", "D2"], ["A4", "B4", "C4"],
    ["B4", "C4", "D4"]
    ]
  end


end



  # def update_board
  #   if shot_sequence is true,
  #     instance_variable_set(access_instance_variable, " H")
  #   else
  #     instance_variable_set(access_instance_variable, " M")
  #   end
  #   puts_variable = enemy_target_map
  # end

# def enemy_target_map
#   "FIRE AT ENEMY SHIPS!
#   ===========
#   . 1 2 3 4
#   A #{row_1}
#   B #{@b1} #{@b2} #{@b3} #{@b4}
#   C #{@c1} #{@c2} #{@c3} #{@c4}
#   D #{@d1} #{@d2} #{@d3} #{@d4}
#   ==========="
# end
#
#
# def player_ship_map #choose a fabulous name, maybe sample it. "Eugene the ugly Unicorn"...
#   "#{@name.upcase}'S SHIPS
#   ===========
#   . 1 2 3 4
#   A #{@a1} #{@a2} #{@a3} #{@a4}
#   B #{@b1} #{@b2} #{@b3} #{@b4}
#   C #{@c1} #{@c2} #{@c3} #{@c4}
#   D #{@d1} #{@d2} #{@d3} #{@d4}
#   ==========="
# end
