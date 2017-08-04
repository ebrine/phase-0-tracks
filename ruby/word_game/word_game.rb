### Pseudocode for game

### Game Class methods:

# Game initialization
  # new game instance starts with hidden word
  # hidden word is stored in array for future use within class
  # assigns the max number of guesses variable based on word length (2x word length to start)
  # game over variable set to false
  # assign blanks "-" to an array of hidden word's 
    # length, to be used as current status variable
  # letters guessed variable
  # outputs: prints blank word.

class WordGame
  # add read/write vars here
  # attr_reader: 
  # attr_accessor:
  def initialize(hidden_word)
    @hidden_word = hidden_word.split('')
    @max_guesses = hidden_word.length * 2
    @game_over = false
    # REFACTOR??
    @current_word = Array.new(hidden_word.length) { |i| "-" }
    @num_guesses = 0
    @letters_guessed = []
    @guesses_left = @max_guesses - @num_guesses
    p @current_word
  end


end

# guess_tracker
# purpose: keeping track of the number of letters guessed
# inputs: guessed letter
  # check if letter is in letters guessed variable (array)
    # if yes, return nil
    # Otherwise:
      # update letters guessed variable
      # update guess count
      # update guesses left
      # if letters guessed reaches max guesses
        # set game over variable to true
# outputs: 


# letter_checker
# purpose: checking if letter is in word
# inputs: letter
  # check if letter is in word array

   # if letter is not in word:
    # return FALSE
   # if letter is in secret word
    # return [letter, index]


# word_updater
# purpose: updating current status of secret word
# inputs: [letter, index] from previous method
  # take [letter, index] and update current word variable
  # if all "-" have been replaced by letters
    # set game_over variable to true


### User interface: && Driver Code

# asks player 1 for word to hide
# initializes game with inputed word
# switches to player 2 with message
# WHILE game play continues (game is not over)
# Asks for a letter guess 
  # updates guess count (calls method)
    # IF already guessed
      # gives feedback to user
    # ELSE:
      # checks if letter is in word (calls method)
      # if yes (!false):
        # updates current status of secret word (calls method)
        # gives feedback to player
      # if no:  
        # gives feedback to player
  # prints current status of secret word
  # prints guess count/ guesses left

# After the loop exits (game is over)
