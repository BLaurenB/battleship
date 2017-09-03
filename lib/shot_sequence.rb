class ShotSequence

end


=begin
this should be a loop of player actions and computer actions until someone warnings

while computer_ships || player_ships not_sunk?
allow a cheat here

1. display map of H&M in enemy(computer's) region (board.computer call)
2. message to player to choose target coordinate (call to U-Comm class)
  - gets
  - check user_input against valid board values, then valid ship values (or opposite?) (calls to board and ship)
    -if invalid, display why, and ask for gets agains (call to U-Comm class)
3. if enemy ship is hit or missed, display tailored message to player
  -if the hit sinks the ship, tell user they sunk one of the ships as well as the size of the ship.
    -if they sink both ships, immediately enter the EndGame phase.
  -also show updated enemy region map (call to U-Comm class, and board class (or is board only stored in U-Comm class?) TELL USER TO PRESS ENTER TO CONTINUE

4. computer turn. what is on the terminal screen? can it be timed? computer randomly selects a target_coord.
5. display message to player of:
  -cordinate fired on
  -hit or miss
    -if hit, whether or not it was sunk.
      -if sunk, tell player the size of the ship that the computer sunk
      -if both ships are sunk, move to endgame sequence.
  - updated map of computers' fires on their territory.









=end
