
console.log("script sheet is linked");
var new_pic_button = document.getElementById("new_pic");
var balloon_button = document.getElementById("move_balloon_button");
var boy = document.getElementById("boy");

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

// var boyLeft = 0;
// function move(event){
//   boyLeft += 10;
//   boy.style.left = boyLeft + 'px';
// };

var m = 0;
function printInstructions(event){
  div = event.target.parentNode;
  console.log(div);
  if (m ==0) {
  
    var b_up = document.createElement("button");
    var b_left = document.createElement("button");
    var b_right = document.createElement("button");
    var b_down = document.createElement("button");

    div.appendChild(b_up);
    div.appendChild(b_left);
    div.appendChild(b_right);
    div.appendChild(b_down);

    b_up.setAttribute("id", "up");
    b_up.style.display = "block";
    b_left.setAttribute("id", "left");
    b_right.setAttribute("id", "right");
    b_down.setAttribute("id", "down");
    b_down.style.display = "block";

    b_up.appendChild(document.createTextNode("Up"));
    b_left.appendChild(document.createTextNode("Left"));
    b_right.appendChild(document.createTextNode("Right"));
    b_down.appendChild(document.createTextNode("Down"));

    b_up.addEventListener('click', moveBalloon);
    b_down.addEventListener('click', moveBalloon);
    b_left.addEventListener('click', moveBalloon);
    b_right.addEventListener('click', moveBalloon);
    m += 1;
  };
};

// var boyLeft = 0;
// function move(event){
//   boyLeft += 10;
//   boy.style.left = boyLeft + 'px';
// };
var boyLeft = 0;
var boyUp = 0;
function moveBalloon(e){
  var increment = 10;
  var id = e.target.id
  var container = document.getElementById("container");
  var positionInfo = container.getBoundingClientRect();
  var height = positionInfo.height;
  var width = positionInfo.width;
  if (id == "up"){
    boyUp -= increment;
    boy.style.top = boyUp + 'px';
    if (boyUp <= -120) {
      boyUp += increment;
      boy.style.top = boyUp + 'px';
    }

  } else if (id == "left"){
      boyLeft -= increment;
      boy.style.left = boyLeft + "px";
      if (boyLeft <= 0){
        console.log("hit left bound");
        boyLeft+= increment;
        boy.style.left = boyLeft +'px';
      }
  } else if (id == "right"){
      boyLeft += increment;
      boy.style.left = boyLeft + "px";
      if (boyLeft >= width - boy.getBoundingClientRect().width){
         boyLeft -= increment;
         boy.style.left = boyLeft + "px";
      }
  } else if (id == "down"){
    boyUp += increment;
    boy.style.top = boyUp + 'px';

  };

};

new_pic_button.addEventListener("click", make_new_character);
// balloon_button.addEventListener("click", move);
balloon_button.addEventListener("click", printInstructions);
// up_button = document.getElementById("up");

// down_button = document.getElementById("down");
// left_button = document.getElementById("left");
// right_button = document.getElementById("right");


// For another implementation:
//document.onkeydown = anim;

$(document).ready(function(){

  // $('#paragraph').css({
  //   'background-color': 'red'  
  // });
  $('#paragraph').hide(2000).show(2000);
});