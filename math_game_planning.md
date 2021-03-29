
# DESCRIPTION
    Create a 2-Player math game where players take turns to answer simple math addition problems. 
    A new math question is generated for each turn by picking two numbers between 1 and 20. 
    The player whose turn it is is prompted the question and must answer correctly or lose a life.


# DETAILS

    Both players start with 3 lives. They lose a life if they mis-answer a question. 
    At the end of every turn, the game should output the new scores for both players, 
    so players know where they stand.

    The game doesn’t end until one of the players loses all their lives. 
    At this point, the game should announce who won and what the other player’s score is.


# Nouns (Classes)
  ### - Player
  ### - Game
  ### - Questions / Problems


# Class Roles
  ### Player
    - State: Lives
    - Behaviour: Remove lives
    - The player class will track the players lives and have methods to remove a life

  ### Game
    - State: Scores
    - Behaviour: Keep track of score
    - The game class will track the scores for each player and be able to add to and display the score
  
  ### Questions
    - State: Answer
    - Behaviour: Generates Questions
    - The question class generate math questions and keep track of the correct answer

# Class Methods
  ### Player Methods
    - init: lives
    - remove_life
    - lose_game?

   ### Game Methods
    -  init: score, players
    -  game_over?
    -  whose_turn
    -  who_won
    -  current_player
  
   ### Questions Methods
    -  init: questions
    -  generate_questions
    -  compare_answer