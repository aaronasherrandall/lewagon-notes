// console.log("Hi from puzzle.js");

// 1- Select element - that user will interact with, that will change - (button / hint)

// 2 - Listen to an event (cluck on button)

// 3 - Change the DOM (add a class active to the hint)

// //////////
// REHEARSAL
// //////////

// 1. Select 2 elements: button, hint
const button = document.querySelector("#show-hint");
const hint = document.querySelector(".hint");

// 2. Listen to a click on the button
button.addEventListener("click", () => {
  // 3. Add a class "active" to the hint
  hint.classList.add("active");
});

// //////////
// LIVECODE
// //////////
