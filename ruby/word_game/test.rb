hidden_word = ["a", "p", "p", "l", "e"]
guessed_letter = "a"
print hidden_word.map.with_index{|x, i| i if x == guessed_letter}.compact

hidden_word = ["a", "p", "p", "l", "e"]
guessed_letter = "p"
print hidden_word.map.with_index{|x, i| i if x == guessed_letter}.compact