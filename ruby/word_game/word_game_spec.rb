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
    p game.guess_tracker("o")
    p game.guess_tracker("r")
    p game.guess_tracker("a")
    p game.guess_tracker("n")
    p game.guess_tracker("g")
    p game.guess_tracker("e")
    p game.guess_tracker("b")
    p game.guess_tracker("c")
    p game.guess_tracker("d")
    p game.guess_tracker("f")
    p game.guess_tracker("h")
    p game.guess_tracker("i")
    expect(game.game_over).to eq true
  end

end