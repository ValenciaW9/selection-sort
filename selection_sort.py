import random
import time

# O(1) space complexity, O(n^2) time complexity
def selection_sort_in_place(lst):
    for i in range(len(lst)):
        min_element_index = i
        for j in range(i + 1, len(lst)):
            if lst[j] < lst[min_element_index]:
                min_element_index = j
        lst[i], lst[min_element_index] = lst[min_element_index], lst[i]
    return lst

if __name__ == '__main__':
    # Test cases

    # Expecting: [-1, 2, 3, 5]
    print(selection_sort_in_place([3, -1, 5, 2]))

    # Expecting: []
    print(selection_sort_in_place([]))

    # Expecting: [-1]
    print(selection_sort_in_place([-1]))

    # Expecting: [-10, 2, 2, 3, 7]
    print(selection_sort_in_place([3, 2, 2, 7, -10]))

    # Expecting: [100, 200]
    print(selection_sort_in_place([100, 200]))

    # Benchmark
    long_input = []
    for i in range(100):
        long_input.append(random.uniform(0, 1))

    start_time = time.time()
    for i in range(1000):
        selection_sort_in_place([2, 1])
        selection_sort_in_place(long_input)

    avg_time = (time.time() - start_time) / 2000
    print(avg_time)

    
    #Pseudocode : the selection sort algorithm divides thhe input list into two parts . Firstly, the  sorted part and the unsorted part. within each iterationm it finds the smallest element in the  unsorted part and  swaps it with the first element within the  sorted part.
    #This method continues until the overall list has been sorted.
    ## The SelectionSort function takes an input list as a parameter.
    #the outer loop iterates over the list from index 0 to the secound -to-las-indec (length(list) -1).
    #inside the outer loop, we initialize min_element_index as i, assuming that the element at index i is the smallest.
    ##The inner loop iterates over the unsorted part of the list, starting from i + 1 to the last index of the list.
    #inside the inner loop, we compare every element with the current minimum element.  if we find a smaller element,we update min_element_index to the index of the new minimum element.
    #after the inner loop completes we then switch the element at index 1 with minimum element found in the unsorted part of the list (at index min_element_index).
    ##THis method has been repeated until the whole list has been sorted.
    #Lastly, the sorted list is returned as te output of the function.
##The selection sort algorithim repeatedly selects the smallest element from the unsorted part of the list and moves it to the sorted part. This method has been repeated until the whole list has been orted within the ascending order.

## Please add your pseudocode to this file
##And a written explanation of your solution
##Rewrite the problem in your own words
##Validate that you understand the problem
##Write your own test cases
##For this task, we are also asking you to calculate the average runtime of your solution. In other words, you run it a bunch of times and then divide the total time it took for the solution to run by the number of times it ran.
