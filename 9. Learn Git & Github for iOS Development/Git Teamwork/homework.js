// Mary Rose's JavaScript Homework
// Overall, the JavaScript homework is well done! The code demonstrates a good understanding of the basic concepts and syntax of JavaScript.

// 1. Write an if/else statement
var APPLE_QUANTITY = 5;

if (APPLE_QUANTITY < 5){
  console.log("You have fewer than 5 apples.");
} else {
  console.log("You have 5 or more apples. Hurrah!");
}

/*  The if/else statement is correctly structured, and the logic is sound. It checks the value of APPLE_QUANTITY and outputs the appropriate message based on the condition. However, it might be beneficial to handle the case when APPLE_QUANTITY is exactly 5 in a more explicit way to make the message clearer. For example:

if (APPLE_QUANTITY < 5) {
  console.log("You have fewer than 5 apples.");
} else if (APPLE_QUANTITY === 5) {
  console.log("You have exactly 5 apples. Hurrah!");
} else {
  console.log("You have more than 5 apples. Hurrah!");
}
*/

// 2. Write a "for" loop
for(i = 0; i < APPLE_QUANTITY; i ++){
  console.log("WEEEEEEE! I'm looping!")
}

/*  The for loop is correctly implemented to loop through the APPLE_QUANTITY and print the message for each iteration. It would be a good practice to declare the i variable with let to limit its scope to the loop block.

for (let i = 0; i < APPLE_QUANTITY; i++) {
  console.log("WEEEEEEE! I'm looping!");
}
*/

// 3. Write a function
var sayHello = function(){
  console.log("Hello!")
}

/*  The function sayHello is defined correctly, and it logs "Hello!" when called. However, it would be more versatile if the function could take a parameter to allow customizing the greeting.

var sayHello = function(name) {
  console.log("Hello, " + name + "!");
};

// Call the function with the name as an argument
sayHello("John"); // Output: Hello, John!
*/

// 4. Create an object
var mary = {
  name: "Mary Rose",
  codeNinja: true,
  country: "UK"
}

//  The object mary is created with the properties name, codeNinja, and country. This is well done and demonstrates a good understanding of object syntax.

//  To improve code consistency, it's recommended to use consistent indentation and consider placing semicolons at the end of each statement to avoid potential issues with automatic semicolon insertion.

//  Overall, great job on the assignment! The code is clear, functional, and demonstrates a good grasp of JavaScript fundamentals. Keep up the good work!
