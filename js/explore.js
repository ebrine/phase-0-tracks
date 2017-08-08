// create a new string
// iterate through the given word letter by letter
// add each letter to the front of the new string

function reverse(string){
  var reversedString = ""
  for (var i = string.length - 1; i >= 0; i--) {
    string[i]
    reversedString += string.charAt(i)
  }
  return reversedString
}

console.log(reverse("hello"))

console.log(reverse("how can i help you?"))

