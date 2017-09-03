=begin
create an array of the board which is 4x4. but it also needs to have
this will be a hash, or it will be a set of interpolated puts-s with \n's

header_iii = "#{player_name.upcase}'S SHIPS"
header_ii = "============
header_i = "#  1 2 3 4"
row_1 = ["A1", "A2", "A3", "A4"]  # plus some spaces on either side, or should that be added in the interpolated puts statment?
row_1 = ["B1", "B2", "B3", "B4"]
row_1 = ["C1", "C2", "C3", "C4"]
row_1 = ["D1", "D2", "D3", "D4"]
footer = "=========="0


the player's ships should be *

there need to be 2 versions of ships that print -- if it's the placed_ship_map, it will be *
-- if it's the enemy_target_map, they will only get H or M on the board.

I'll need to test:
make sure it exists. check that it has all 4 rows.
check that it has a header and footer
check that it has a default name for the computer

=end


#what if I just wanted to puts once and call the arrays?
# default is all spaces
a1, a2, a3, a4 = " ", " ", " ", " "
b1, b2, b3, b4 = " ", " ", " ", " "
c1, c2, c3, c4 = " ", " ", " ", " "
d1, d2, d3, d4 = " ", " ", " ", " "
  #if something_happens...
  # a1 == user_input.downcase ? "H" : "M"
  #
  #
  #

d1 = "*"
d2 = "H"
d3 = "M"
d4 = "*"
puts "
ENEMY TARGET MAP
===========
. 1 2 3 4
A #{a1} #{a2} #{a3} #{a4}
B #{b1} #{b2} #{b3} #{b4}
C #{c1} #{c2} #{c3} #{c4}
D #{d1} #{d2} #{d3} #{d4}
==========="

# print "\e[H\e[2J"  #this works just by calling it!
