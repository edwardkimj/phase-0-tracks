// REVERSE pseudocode
// 1. Write a function called reverse that takes in a string as a parameter
// 2. name an empty variable reverse_string and make it equal to ""
// 3. use a for loop to loop through each letter of the string but start your
// counter from the last letter of the string by using string.length and
// increment backwards by using i
// 4. While using the for loop we created, push the results into your empty var
// reverse_string.
// 5. console.log reverse_string and end the function


function reverse(string) {
  var reverse_string = "";
  for (var i = string.length - 1; i >= 0; i--) {
    reverse_string += string[i];
  };
  console.log(reverse_string);
};

reverse("edward");
reverse("hello");
