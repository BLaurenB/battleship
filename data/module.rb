module Instructions

  self.general_instructions
    "Be the first to sink your opponent's ships!

    Choose your ship locations. You have one ship that takes 2 board-spaces, and another that takes 3 spaces.

    Ships can be placed vertically or horizontally on the board in a straight line, but they cannot overlap or be placed diagonnaly.

    When prompted, enter the coordinates of your ships like this:
    A1 A2 A3

    Once you and your opponent have placed your ships, you will take turns firing shots into enemy territory. After each shot you'll see the player board updated to show whether you hit an enemy ship or missed. When prompted, enter your shot like this:
    C4

    When a player has Hit all the opponents' ship coordinates, that player wins!"
  end

  self.ship_out_of_bounds
    "You entered a coordinate that is outside the bounds of this board. Enter your coordinate again."
  end

  self.ship_overlaps
    "You have selected a coordinate that overlaps your other ship. Please re-enter all values for your 3x1 ship."
  end

  self.ship_coordinates_invalid
    "The coordinates you entered are not close enough together. Your ships are 2x1 and 3x1. They can be placed vertically and horizontally.
    -- If a ship is 2 squares wide, you must choose two coordinates which are next to each other, either vertically or horizontally.
    -- If your ship is 3 squares wide, you must choose 3 coordinates that occur in a line either vertically or horizontally. 3-square ships cannot bend corners!"

  end

  self.shot_already_input
    "You have already fired on this coordinate. Please try again."
  end

  self.shot_out_of_bounds
    "You entered a coordinate that is outside the bounds of this board. Enter your coordinate again."
  end

end
