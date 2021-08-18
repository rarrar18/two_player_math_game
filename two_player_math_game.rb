# Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

######

  # Game Loop: game starts, questions are asked until end condition is met, score is tallied and shown, game ends
  # run through each question with expected answers

  # or create a method that randomly generates two numbers, and check for the sum matches

    # for each question, call player answer method for current_player (gets.chomp for input)

    # check if inputted answer matches question bank's answer
      # if wrong, subtract a score from that player and show losing message
      # if right, score stays the same and winning message is shown

    # check if the game over conditions are met (eg. one players loses all lives)
      # if one player loses all of their lives
        # then display winning player's score
        # and end the game

      # if both players still have at least one life
        # then display current player scores
        # and pass the turn to next player by toggling current_player boolean
        # and repeat game loop 