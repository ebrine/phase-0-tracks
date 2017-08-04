# WordGame class should be able to 





require_relative 'word_game'


describe WordGame do 

  let (:game) {WordGame.new("orange")} 

  it "initialization sets current_word to array of dashes" do
    expect(game.current_word).to eq ["-","-","-","-","-","-"]
  end

  it "update guess_count when new unique letter is guessed" do
    game.guess_tracker("a")
    expect(game.guess_count).to eq 1
  end
  
  it "store guessed letter in letters_guessed array" do
    game.guess_tracker("a")
    expect(game.letters_guessed).to eq ["a"]
  end


  it "repeated guesses should not update guess_count" do
    game.guess_tracker("a")
    game.guess_tracker("a")
    expect(game.guess_count).to eq 1
  end
  
  it "letter_checker should return the letter and its index
  if the letter is in the hidden word" do
    expect(game.letter_checker("o")).to eq ["o", 0]
  end
  
  it "game should end if max guesses is reached" do
    game.guess_tracker("o")
    game.guess_tracker("r")
    game.guess_tracker("a")
    game.guess_tracker("n")
    game.guess_tracker("g")
    game.guess_tracker("e")
    game.guess_tracker("b")
    game.guess_tracker("c")
    game.guess_tracker("d")
    game.guess_tracker("f")
    game.guess_tracker("h")
    game.guess_tracker("i")
    expect(game.game_over).to eq true
  end

  it "word_updater should insert correctly guessed letter
  into correct location in current_word variable" do
    letter_array = game.letter_checker("o")
    expect(game.word_updater(letter_array)).to eq ["o","-","-","-","-","-"]
  end

end