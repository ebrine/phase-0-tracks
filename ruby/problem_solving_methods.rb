=begin
Release 0 Pseudocode
1. Use each_ir to look through each array term
2. Compare term to given number
3. Return index if they match
=end

#Release 0
def search_array(arr, x)
    arr.each_index { |i| return i if arr[i] == x }
    return nil
end

#Driver Code for Release 0
arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 100)

=begin
### Release 1: Fibonacci Numbers
pseudocode

create a method that takes the number of Fibonacci Numbers that the user wants
if that number is 1, pass an array [0]
if that number is 2, pass the array [0,1]

if the number is 3 or greater
  continue to add numbers to the array until the length is == the argument passed to the method
  to add a term to array: take the last two numbers of the FIB array (indexing with -1, -2)
  add those numbers together
  push to FIB array

  send FIB array back when length is equal to the length requested
=end

def fib(number_of_terms)
  fib_array = []
  if number_of_terms == 1
    fib_array = [0]
  elsif number_of_terms == 2
    fib_array = [0,1]
  else
    fib_array = [0,1]
    until fib_array.length == number_of_terms
      new_term = fib_array[-1] + fib_array[-2]
      fib_array.push(new_term)
    end
  end
  return fib_array
end
# Driver Code For Release 1
puts "Fibonacci Array:"
puts "for 6 terms:"
p fib(6)
puts "100th term:"
p fib(100)[-1]

=begin
## Release 2 
Pseudocode for Bubble Sort
0. Until no swaps are made (array is sorted)
1. Create a loop using an index variable while index variable < length of array -1
2. Loop through array and compare current + next array item
3. If next item >= current item, don't swap 
4. Else, swap the items
5. Compare resulting array to starting array
=end

## Release 2 Code

def sort_array(arr)
  array_to_sort = arr
  got_swapped = nil
  until got_swapped == false
      got_swapped = false
      array_to_sort.each_index do |i| 
        break if i + 1 == array_to_sort.length
        if array_to_sort[i] > array_to_sort[i+1]
          array_to_sort[i], array_to_sort[i+1] = array_to_sort[i+1], array_to_sort[i]
          got_swapped = true
        end
      end   
  end
  return array_to_sort
end

#Driver Code for Release 2
array = [35, 27, 8, 88, 72, 20]
puts "Array to sort is #{array}"
p "Sorted array is #{sort_array(array)}"