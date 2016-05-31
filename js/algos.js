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
