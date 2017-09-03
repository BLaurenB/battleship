class  Board

  # attr_accessor

  attr_reader :name, :user_input, :a1, :a2, :a3, :a4, :b1, :b2, :b3, :b4, :c1, :c2, :c3, :c4, :d1, :d2, :d3, :d4

  def initialize(name = "Eugene the Ugly Unicorn", user_input = "")

    @name = name
    @user_input = user_input
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @a4 = " "

    @b1, @b2, @b3, @b4 = " ", " ", " ", " "
    @c1, @c2, @c3, @c4 = " ", " ", " ", " "
    @d1, @d2, @d3, @d4 = " ", " ", " ", " "
  end


  # require "pry"; binding.pry
=begin
example:
  user_input = gets.chomp (chooses "A1")
  #check for validity...raise warnings if needed
  user hits a ship! I know becuase I check the input string against the known ships.
  but now I have a problem. the user input is "a1", a string, and I want to connect that string to the variable of the same name, @a1. think I have to have a hash anyway so that I can use the variable name by accessing the has with the input string.

  once I use a hash to get the variable that I want to update, I won't know what that variable is. I'll have to trust that the computer can use the magic_var which holds the real instance variable.



  board_hash = {["a1" => @a1], [etc.]}
  magic_var = board.board_hash[key] #returns the value.

  ships = [aray of all ship coords]
  ships.include?(user_input.downcase) ? @var = "H" : @var = "M"




  ACTUALLY (or in addition to above) what I want is a hash of the @a1, @a2, etc, with the value as "  " to begin. Then I want to user_input to find the key that matches it, and write over the hash's value for that key. then in my terminal board, I might need to change the simple #{@a1} to #{board_hash[a1]}



  OR maybe I can keep my board by using this:


  https://ruby-doc.org/core-2.4.1/Object.html
!!!"If the instance variable name is passed as a string, that string is converted to a symbol."!!!
class Fred
  def initialize(p1, p2)
    @a, @b = p1, p2
  end
end
fred = Fred.new('cat', 99)
fred.instance_variable_set(:@a, 'dog')   #=> "dog"
fred.instance_variable_set(:@c, 'cat')   #=> "cat"
fred.inspect                             #=> "#<Fred:0x401b3da8 @a=\"dog\", @b=99, @c=\"cat\">"

=end







  def interpolation
    @a1 = user_input
    "#{@a1}"
  end

  def enemy_target_map
    "FIRE AT ENEMY SHIPS!
    ===========
    . 1 2 3 4
    A #{a1} #{@a2} #{@a3} #{@a4}
    B #{@b1} #{@b2} #{@b3} #{@b4}
    C #{@c1} #{@c2} #{@c3} #{@c4}
    D #{@d1} #{@d2} #{@d3} #{@d4}
    ==========="
  end


  def player_ship_map #choose a fabulous name, maybe sample it. "Eugene the ugly Unicorn"...
    "#{@name.upcase}'S SHIPS
    ===========
    . 1 2 3 4
    A #{@a1} #{@a2} #{@a3} #{@a4}
    B #{@b1} #{@b2} #{@b3} #{@b4}
    C #{@c1} #{@c2} #{@c3} #{@c4}
    D #{@d1} #{@d2} #{@d3} #{@d4}
    ==========="
  end

# print "\e[H\e[2J"  #this works just by calling it!

=begin
the player's ships should be *

there need to be 2 versions of ships that print -- if it's the placed_ship_map, it will be *
-- if it's the enemy_target_map, they will only get H or M on the board.

=end

end
