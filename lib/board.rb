class  Board

  attr_accessor :a2, :a3, :a3, :a4,
    :b1, :b2, :b3, :b4, :c1, :c2, :c3, :c4,
    :d1, :d2, :d3, :d4

  def initialize(name)

    @name = name

    @a1, @a2, @a3, @a4 = " ", " ", " ", " "
    @b1, @b2, @b3, @b4 = " ", " ", " ", " "
    @c1, @c2, @c3, @c4 = " ", " ", " ", " "
    @d1, @d2, @d3, @d4 = " ", " ", " ", " "
  end

  def enemy_target_map
    "FIRE AT ENEMY SHIPS!
    ===========
    . 1 2 3 4
    A #{a1} #{a2} #{a3} #{a4}
    B #{b1} #{b2} #{b3} #{b4}
    C #{c1} #{c2} #{c3} #{c4}
    D #{d1} #{d2} #{d3} #{d4}
    ==========="
  end

  def name
    @name
  end

  def player_ship_map #choose a fabulous name, maybe sample it. "Eugene the ugly Unicorn"...
    "#{@name.upcase}'S SHIPS
    ===========
    . 1 2 3 4
    A #{a1} #{a2} #{a3} #{a4}
    B #{b1} #{b2} #{b3} #{b4}
    C #{c1} #{c2} #{c3} #{c4}
    D #{d1} #{d2} #{d3} #{d4}
    ==========="
  end

# print "\e[H\e[2J"  #this works just by calling it!

=begin
the player's ships should be *

there need to be 2 versions of ships that print -- if it's the placed_ship_map, it will be *
-- if it's the enemy_target_map, they will only get H or M on the board.

=end

end
