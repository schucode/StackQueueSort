
def select_sort(array)
  (0..array.length-1).each do |i| 
    tag = i
    (i..array.length-1).each do |j|
      if array[i] > array[j]
        tag = j
      end
    end
    array[i], array[tag] = array[tag], array[i]
  end
  return array

end





# Start with index 0
# Go through all of the elements in the array and find the 
# smallest element along with its index

# Swap the smallest element with the element in index 0

# Now we know that element 0 has the proper element in it, 
# so we can move on to index 1.

# Repeat the process by finding the next smallest element 
# and putting it in index 1.

# Keep repeating this process while incrementing your index 
# until you've gone through your entire array.

# Your array should now be sorted!!