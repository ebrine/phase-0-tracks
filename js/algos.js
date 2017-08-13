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

// known problem : doesn't deal with case when 2 words have equal length
// only returns first one of that length to appear


///////////////////////////////////////////////
// Release 1 Pseudocode

// Find a Key-Value match:
// Method takes two objects
// iterate through the keys of the first object, 
// and look to see if a match exists in the second object
// If a match does exist,
// compare the values of those keys in both objects
// If the values match, return true
// If no key-value pair match, return false


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

function compareObjects(obj1, obj2){
  matchExists = false;
  keys1 = Object.keys(obj1);
  keys2 = Object.keys(obj2);
  for (var i in keys1){
    key = keys1[i];
    if (keys2.indexOf(key) != -1) {
      if (obj1[key] == obj2[key]){
        matchExists = true;
      }
    }  
  }
  return matchExists;
}

// /// Driver Code
// console.log(longestWord(["eliza", "lily", "madison", "angus"]));
// console.log(longestWord(["long phrase","longest phrase","longer phrase"]));
// console.log(longestWord(["giraffe", "sea lion", "elephant"]));
console.log(compareObjects({name: "Steven", age: 24, dog: "Ruby"}, {name: "Tamir", age: 54, cat: "Fritz"})); // returns false
console.log(compareObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54})); // returns true
console.log(compareObjects({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})); // returns true