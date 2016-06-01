// Release 0: Find the longest Phrase

// Start by declaring a function by the name of longest_word that takes an
// array as a parameter

// First set a variable by the name of longest_word equal to the first index
// of the array

// To recieve the longest word in a set of arrays, we need to iterate through the array
// and print out the longest word

// When iterating through the array, compare the first word with the other words
// or phrases

// If the length of the other words/phrases are larger than the first word,
// print out the longest word

function longestWord(array) {
  var longWord = array[0];
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longWord.length ) {
      var longWord = array[i];
    }
  }
  console.log(longWord);
}

// Driver Code:

longestWord(["hi", "hello", "edward"]);
longestWord(["table", "hey there! Hows it going!", "I'm tired."]);

// Release 1: Find a key-value match

// Write a function that takes two objects as arguments and compares them to
// see if they have at least one key-value pair
// Return true, if they at least one key-value pair match

// Since only at least one key-value needs to match with each other we just need
// to compare the values of the the objects to see whether it is true

// I can't seem to get this one right. The iteration seems to stop at the first key
// when it finds out its false and stops the iteration.

function matchObject(object1, object2) {
  for (var key in object1) {
    if (object1[key] === object2[key]) {
      console.log("true");
    } else {
      console.log("false");
    }
  }
}

// Driver code:

var edward = {
  name: "Edward",
  age: 23
}
var jon = {
  name: "Jon",
  age: 23
}

matchObject(edward, jon);

// Release 2:

// Write a function that takes an integer for length, and builds and returns
// an array of strings of the given length

function randomWords(integer) {
  // create an empty variable of array
  var array = [];
  // make a loop to iterate until the integer inputted to push that many number of
  // words(function made) into the array
  for (var i = 0; i < integer; i++) {
    array.push(words());
  }
  // return the array
  return array;
}



// Write a function that creates random words from a length between 1 and 10 letters

function words() {
  // create a variable alphabet to access random letters
  var alph = "abcdefghikjlmnopqrstuvwxyz";
  // create a variable word as an empty string to put your random letters into and make an random
  // word
  var word = "";
  // loop through the alphabet randomly until the length of 10(randomly) and iterate to put it
  // into the empty string word and return the result
  for (var i = 0; i < (Math.floor(Math.random() * 10) + 1); i++) {
    word = word + alph[(Math.floor(Math.random() * 26))];
  }
  return word
}

console.log(words());
console.log(randomWords(3));


// Add driver code that does the following 10 times: generates an array, prints the
// array, feeds the array to your "longest word" function, and prints the result

for (var i = 0; i < 10; i++) {
  longestWord(randomWords(3));
}
