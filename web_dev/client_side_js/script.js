
console.log("script sheet is linked");
var new_pic_button = document.getElementById("new_pic");
var balloon_button = document.getElementById("move_balloon");
var boy = document.getElementById("boy");
function move_balloon(event) {
  event.target.style.position = "";
};
var n = 0;
function make_new_character(event) {
  // console.log("Button clicked!");
  if (n == 0) {
  var element = document.createElement("img");
  element.setAttribute("src", "new_charac_horton.jpg");
  document.getElementById("new_pic_div").appendChild(element);
  n += 1;
  }
};
var leftVar = 0;
function move(event){
  left += 100px;
  boy.style.left = leftVar + 'px';
};


new_pic_button.addEventListener("click", make_new_character);
balloon_button.addEventListener("click", move);