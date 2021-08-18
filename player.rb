# keeps track of the state and behaviour of each Player object
class Player
  # create getters/setters, and instance variables for @name and @score
  attr_accessor :name, :score
  # method: initializer
  def initialize(name, score)
    @name = name
    @score = score
  end
  # call a getter method, not create a new local variable, by using self
  def info
    "#{self.name} has a score of #{self.score}/3."
  end
end