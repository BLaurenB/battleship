=begin
initial thoughts on classes.

board (and ships? or ships separate?)
  totally different classes for computer/player, or just instances of the same class?
ships?
game initiazlization
player turns - separate from computer's turns?
end sequence
general terminal interaction (also holds the timer)


to clear the terminal after a shot phase, use
 print "\e[H\e[2J"
 this works just by calling it!

=end




"
try interpolating a puts's row using this. I might need to append the "a2" string with a "@" at the beginning...
*check your string methods or else you'll have to .to_a.shift(@)
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
  (if hit = false, do a similar thing, only with " M")
  ...now take ui.downcase and apply it to finding and changing the instance variable:

  access_instance_variable = ":@".concat(ui.downcase)
  instance_variable_set(access_instance_variable, " H")
  ...so that @a1 = " H" for interpolation in Board?

if not interpolating each,
  row_1 = ["  ", "  ", "  ", "  "]
  row_1[0] is also the position of board.a1
  so if a1 gets hit, and I need to update row_1 = " H"

  I need to check the ship_array.
  if true,
    find ui.downcase in a board_hash of nested hashes. this way you could use the ui to return a KVpair in order to update the row element. This would be a row-by-row-board as opposed to an each-square-board
    just try this with PRY
    board_hash = [
    {"a1" => {board.row_1[0] => "  "}},
    {"a2" => {board.row_1[1] => "  "}},
    {"a3" => {board.row_1[2] => "  "}},
    {"a4" => {board.row_1[3] => "  "}}
    ]
    row_position = board_hash[ui]
    board_hash[ui][row_position] = " H"
    # this overwrites the value in row_1[1]
    then to puts the row, you'll need to .map through the board_hash to  get an array of the spaces (or updated characters). or, if I have @a1 assigned to the puts version of row_1 (like terminal_row_x?) can I just navigate there and drop " H" into the printed board?
