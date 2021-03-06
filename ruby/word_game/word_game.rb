### Pseudocode for game

## Extra stuff I did:
# Hid the player 1 input

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
# inputs: [letter, index] array from previous method
  # take [letter, index] and update current word variable
  # if all "-" have been replaced by letters
    # set game_over variable to true


require 'io/console'

class WordGame

  attr_accessor :current_word, :guess_count, :hidden_word,
  :letters_guessed, :guesses_left, :game_over, :game_won

  def initialize(hidden_word)
    @hidden_word = hidden_word.split('')
    @max_guesses = hidden_word.length * 2
    @game_over = false
    @current_word = Array.new(hidden_word.length) { |i| "_" }
    @guess_count = 0
    @letters_guessed = []
    @guesses_left = @max_guesses - @guess_count
    @game_won = false
  end

  def guess_tracker(guessed_letter)
    if @letters_guessed.include?guessed_letter
      return nil
    else
      @letters_guessed << guessed_letter
      @guess_count += 1
      @guesses_left = @max_guesses - @guess_count
    end
    @game_over = true if @guesses_left == 0
    return true
  end

  def letter_checker(guessed_letter)
    if @hidden_word.include?guessed_letter
      letter_index_array = @hidden_word.map.with_index{|x, i| i if x == guessed_letter}.compact
      return [guessed_letter, letter_index_array]
    else
      return false
    end
  end

  def word_updater(array)
    correct_letter = array[0]
    index_array = array[1]
    index_array.each do |i| 
      @current_word.delete_at(i) 
      @current_word.insert(i, correct_letter)
    end
    is_finished = !(@current_word.include? "_")
    @game_over = true if is_finished == true
    @game_won = true if is_finished == true
    return @current_word
  end

  def print_current_array
    puts "------------------"
    if !@game_over
      puts "Your word so far:"
    else
      puts "Your hidden word!"
    end
    puts ' '
    puts @current_word.join(" ")
    puts " "
    puts "------------------"
  end

  def print_guesses_left
    puts "You have #{guesses_left} guesses left."
  end


end


### User interface: && Driver Code

# asks player 1 for word to hide
# initializes game with inputed word
# print @current_word
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

# Prints messages for success/failure at end of game 

puts "Welcome to the Word Game!"
puts "Player 1, please enter a word to hide:"
hidden_word = STDIN.noecho {|i| i.gets}.chomp
game = WordGame.new(hidden_word)
puts "Player 2, it's your turn!"
game.print_current_array
while !game.game_over
  game.print_guesses_left
  puts "Guess a letter:"
  guessed_letter = gets.chomp.downcase
  if game.guess_tracker(guessed_letter) == nil
    puts "You've already guessed that one!"
  else
    letter_checker_output = game.letter_checker(guessed_letter)
    if letter_checker_output == false
      puts "That letter isn't in the word. Try again!"
    else
      puts "Great guess!"
      game.word_updater(letter_checker_output)
    end
  end
  game.print_current_array
end

if game.game_won
  puts "Congratulations, you've guessed the word!"
else
  puts "You're all out of guesses :( Better luck next time."
  puts "The hidden word was:"
  puts " "
  puts game.hidden_word.join(" ")
end

