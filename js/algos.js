// Release 0 Pseudocode

// Find the longest phrase
// function should take an array
// iterate through the array, 
// taking the length of each entry
// create a "longestWord" variable
// if the length of the entry is longer than 
// the length of the longestWord,
// that entry should be stored as longestWord
// return longestWord when all items in array have been checked

function longestWord(array) {
  word_array = array;
  longest = "";
  for (var i = 0; i < word_array.length; i++) {
    // console.log(word_array[i].length);
    // console.log(longestWord.length);
    if (word_array[i].length > longest.length){
    longest = word_array[i];}
  }
  return longest
}

/// Driver Code
console.log(longestWord(["eliza", "lily", "madison", "angus"]));
console.log(longestWord(["long phrase","longest phrase","longer phrase"]));
console.log(longestWord(["giraffe", "sea lion", "elephant"]));

// known problem : doesn't deal with case when 2 words have equal length
// only returns first one of that length to appear