require './player'

# keeps track of the state and behaviour of entire Game object
class Game
  # method: initializer (initialize players, resets boolean for game end state)
  def initialize(player1, player2)
    # set an instance variable for game state
    ready_to_play = true
    puts "Are we ready to play? #{ready_to_play}"
    # create two instance variables of Player(name, score)
    # dependency injection (is not responsible for creating the player)
    @player1 = player1
    @player2 = player2
    @active_player = @player1
    # displays player initialization message
    puts @player1.info
    puts @player2.info
  end

  def players_alive?
    # check if each player still has a score above 0/3
    @player1.score > 0 && @player2.score > 0
  end

  def start
    puts "---GAME START---"
    # run game loop while no one has a score of 0/3
    while players_alive?
      generate_question
    end
    # the currently active player is the winner, display their score
    puts "#{@active_player.name} has a score of #{@active_player.score}/3."
    puts "---GAME OVER---"
  end

  def generate_random_num
    # get a random number under 100
    rand(-100)
  end

  def swap_players
    # if the active player is player1 then make it player2
    if @active_player == @player1
      @active_player = @player2
      # otherwise keep it as player1
      else @active_player = @player1
    end
  end

  def generate_question
    # add the two randomly generated numbers to form a question
    ran_num1 = generate_random_num
    ran_num2 = generate_random_num
    answer = ran_num1 + ran_num2
    puts "--#{@active_player.name}'s turn--"
    puts "What does #{ran_num1} plus #{ran_num2} equal?"

    # gets input from the user
    input = gets.chomp.to_i
    # check if the user's input matches the answer
    if answer == input
      puts "YES! You are correct."
    else
      puts "No. You are incorrect."
      score_tracker
    end
    # call method which switches active_player
    swap_players
  end

  def score_tracker
    # if the active_player's answer is wrong, take away one score point
    @active_player.score -= 1
  end 

end