require
require "./lib/board.rb"
require "./lib/ships.rb"
require "./lib/user_communication.rb"
require "./data/instructions.rb"



class GameSetUp

  def initialize
  end




end


=begin
**initiate a timer**

**computer set up**
-place 2 ships randomly on the board (so I need to pull in at least 2 classes) (Board call), do I need a ship class?)

**player set up**
display message from the UI class
ask for input

def place_first_ship
loop 2.times
-ask for input
-gets
-verify first input is valid (check characters, make a Board or Ship call to check valid locations)
  - if invalid, display message about why
-update player map (a Board.player call)

def place_second_ship
loop 3.times
-ask for input
-gets
-verify first input is valid (a Board call)
  - if invalid, display message about why
-update player map (a Board.player call)

**show map** (note ininstructions that ship is represented by *s)
-make a board call for player's ships

end player set up.



=end
