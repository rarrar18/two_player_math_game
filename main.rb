# import class files
require './game'
# instantiate Game object with Players as arguments
@game = Game.new(
  Player.new('Player 1', 3),
  Player.new('Player 2', 3)
)
# call game start method from Game class
@game.start