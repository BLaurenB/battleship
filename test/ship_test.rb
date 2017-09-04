gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "minitest/pride"
require "./lib/board.rb"
require "./lib/ship.rb"
require "./lib/user_communication.rb"
require "./lib/shot_sequence.rb"
require "./data/instructions.rb"


class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end

  # def test___
  #   ship = Ship.new
  #   input =
  #   output =
  #
  #   assert___ output, input
  # end

end


=begin
test it...  
can choose valid ships.
can detect invalid ship entries
 - no spaces, additional punctuation, invalid coordinates,
   -displays correct error messages.

=end
