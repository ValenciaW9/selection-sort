function selectionSort(arr) {
  for (let i = 0; i < arr.length - 1; i++) {
    let minIndex = i;

    for (let j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex !== i) {
      let temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }

  return arr;
}

console.log(selectionSort([10, 4, 3, 2, 1, 5])); // Expected output: [1, 2, 3, 4, 5, 10]
console.log(selectionSort([-1, -2, 4, 2])); // Expected output: [-2, -1, 2, 4]
console.log(selectionSort([3, -1, 5, 2])); // Expected output: [-1, 2, 3, 5]




// Please add your pseudocode:
function selectionSort(arr):
    for i from 0 to length of arr - 1:
        minIndex = i

        for j from i + 1 to length of arr:
            if arr[j] < arr[minIndex]:
                minIndex = j

        if minIndex is not equal to i:
            swap arr[i] with arr[minIndex]

    return arr
//Continued pseudocode:
//The selectionSort function takes an array arr as input.

//We use a for loop to iterate through the array from index 0 to the second-to-last index (length of arr - 1).

//Inside the for loop, we initialize minIndex to the current index i.

//We then use another for loop to iterate from i + 1 to the end of the array.

//In the inner for loop, we compare each element with the element at minIndex. If we find a smaller element, we update minIndex to the current index j.

//After the inner for loop finishes, we check if minIndex is different from i. If it is, we swap the element at index i with the element at minIndex to move the minimum element to its correct position.

//Lastly, we return the sorted array arr.

// And a written explanation of your solution
//Rewrite the problem in your own words
//Validate that you understand the problem
//Write your own test cases
// For this task, we are also asking you to calculate the average runtime of your solution. In other words, you run it a bunch of times and then divide the total time it took for the solution to run by the number of times it ran.
//Here is the pseudocode for creating your own basic benchmarking procedure:store the current time in a variable called start time
//loop 1000 times:
 // execute the method using a small input, e.g. three items if input is an Array
 // execute the method using a larger input, e.g. 100 items if input is an Array
//average runtime = (current time - start time) / 2000