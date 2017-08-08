// create a new string
// iterate through the given word letter by letter
// starting with the last letter and ending with first
// add letters to reversedString

function reverse(string){
  var reversedString = ""
  for (var i = string.length - 1; i >= 0; i--) {
    string[i]
    reversedString += string.charAt(i)
  }
  return reversedString
}


// Driver Code
reversedGreeting = reverse("how can i help you?")

if (reversedGreeting.length > 5) {console.log(reversedGreeting)}

