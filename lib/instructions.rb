module Instructions

  def self.general_instructions
    "Be the first to sink your opponent's ships!

    Choose your ship locations. You have one ship that takes 2 board-spaces, and another that takes 3 spaces.

    Ships can be placed vertically or horizontally on the board in a straight line, but they cannot overlap or be placed diagonally.

    When prompted, enter the coordinates of your ships like this:
    A1 A2 A3

    Once you and your opponent have placed your ships, you will take turns firing shots into enemy territory. After each shot you'll see the player board updated to show whether you hit an enemy ship or missed. When prompted, enter your shot like this:
    C4

    When a player has Hit all the opponents' ship coordinates, that player wins!"
  end

  def self.ai_ship_set_up_complete
    "I have laid out my ships on the grid.
    You now need to lay out your two ships.
    the first is two units long and the second is three units long. The grid has A1 at the top left and D4 at the bottom right:

    Ship Board:
    ===========
    . 1 2 3 4
    A #{@row_1}
    B #{@row_2}
    C #{@row_3}
    D #{@row_4}
    ===========

    Enter the coordinates for the two-unit ship:"
    
  end

  def self.ship_out_of_bounds
    "You entered a coordinate that is outside the bounds of this board.\nEnter your coordinates again."
  end

  def self.ship_1_input_too_small
    "You did not enter enough characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
    D2 D3
    or
    B3 C3"
    end

  def self.ship_1_input_too_large
    "You entered too many characters. Enter your choice as a two digit coordinate, a space, and then your final two digit coordinate, then hit enter. Example:
    D2 D3
    or
    B3 C3"
    end

  def self.ship_2_input_too_small
    "You did not enter enough characters. Enter your choice as shown below. Example:
    D2 D3 D4
    or
    B3 C3 D3"
  end

  def self.ship_2_input_too_large
    "You entered too many characters. Enter your choice as shown below. Example:
    D2 D3 D4
    or
    B3 C3 D3"
  end

  def self.ships_overlap
    "Your ships cannot overlap. Please re-enter all values for your 3x1 ship."
  end

  def self.shot_already_input
    "You have already fired on this coordinate. Please try again."
  end

  def self.shot_out_of_bounds
    "You entered a coordinate that is outside the bounds of this board. Enter your coordinate again."
  end



end
