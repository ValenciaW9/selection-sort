def selection_sort(arr):
  sorted = []

  until arr.length == 0
    min = arr.min
    idx = arr.index(min)
    sorted << min
    arr.delete_at(idx)
  end

  sorted
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print selection_sort([3, -1, 5, 2])

  puts

  puts "Expecting: []"
  print selection_sort([])

  puts

  puts "Expecting: [-1]"
  print selection_sort([-1])

  puts

  puts "Expecting: [-10, 2, 2, 3, 7]"
  print selection_sort([3, 2, 2, 7, -10])

  puts

  puts "Expecting: [100, 200]"
  print selection_sort([100, 200])

  puts
  # Don't forget to add your own!

  # BENCHMARK HERE, you can print the average runtime
  long_input = []
 
  100.times { long_input << rand }

  start_time = Time.now

  1000.times do
    selection_sort([2, 1])
    selection_sort(long_input)
  end

  avg_time = (Time.now - start_time) / 2000
  puts avg_time
end








# Please add your pseudocode to this file
############################################################################
 # initialize an empty Array called sorted
 # 
 # loop array length times:
 #    store minimum value in array in min
 #    remove minimum value from input array
 #    push min onto sorted
 # 
 # return sorted
############################################################################

# And a written explanation of your solution pseudocode:  pseudo code for the selection sort algorithm:
##
##Explanation of the algorithm:
##The SelectionSort function takes an input array as a parameter.
##The outer loop iterates over the array from index 0 to the second-to-last index (length(array) - 1).
##Inside the outer loop, we initialize min_index as i, assuming that the element at index i is the smallest.
## The inner loop iterates over the unsorted part of the array, starting from i + 1 to the last index of the array.
-#Inside the inner loop, we compare each element with the current minimum element. If we find a smaller element, we update min_index to the index of the new minimum element.
# After the inner loop completes, we swap the element at index i with the minimum element found in the unsorted part of the array (at index min_index).
# This process is repeated until the entire array is sorted.
-#Finally, the sorted array is returned as the output of the function.

##The selection sort algorithm reoxxurently selects the smallest element from the unsorted part of the array and moves it to the sorted part. This process is repeated until the entire array is sorted in ascending order.

SelectionSort(array):
for i = 0 to length(array) - 1:
    min_index = i
    for j = i + 1 to length(array):
        if array[j] < array[min_index]:
            min_index = j
    swap array[i] with array[min_index]
return array

##pseudocode
############################################################################
 # The selection sort algorithm states that we need to find the minimum value 
 # of the input array and place it in another array until all of the values have
 # been placed. This means I can find the minimum in the input, remove it from the
 # input, and push it onto another array in order to sort the values. The first time
 # I find the minimum in the input, that's the lowest value, the second time I find
 # the minimum, that's the second lowest value, and so on. Once the input array is  
 # empty, the sorting is complete.
############################################################################
