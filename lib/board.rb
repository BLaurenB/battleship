require "./lib/instructions.rb"


class  Board

  # attr_accessor

  attr_reader :name, :user_input, :a1, :a2, :a3, :a4, :b1, :b2, :b3, :b4, :c1, :c2, :c3, :c4, :d1, :d2, :d3, :d4

  def initialize(name = "Eugene the Ugly Unicorn")

    @name = name
    @user_input = ""
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @a4 = " "

    @b1, @b2, @b3, @b4 = " ", " ", " ", " "
    @c1, @c2, @c3, @c4 = " ", " ", " ", " "
    @d1, @d2, @d3, @d4 = " ", " ", " ", " "
  end

# require "pry"; binding.pry
  def update_instance_variable_for_map
    @user_input = "A1"
    map_coord = "@" << @user_input.strip.downcase
    # map_coord.to_sym #is this really needed to get into a hash?
    #methods returns :@a1...do I need the @ for a key to access the value?
    # what about Josi's idea that youstore both the H and M in a hash?
  end

  def update_board
    if shot_sequence is true,
      instance_variable_set(access_instance_variable, " H")
    else
      instance_variable_set(access_instance_variable, " M")
    end
    puts_variable = enemy_target_map
  end

  def enemy_target_map
    "FIRE AT ENEMY SHIPS!
    ===========
    . 1 2 3 4
    A #{row_1}
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


if "A1"(ui.downcase) matches a value in ship_array,
  hit = true
    ...now take ui.downcase and apply it to finding and changing the instance variable:

    access_instance_variable = ":@".concat(ui.downcase)
    instance_variable_set(access_instance_variable, " H"
    ...so that @a1 = " H" for interpolation in Board?
  (if hit = false, do a similar thing, only with " M")

=end




end
