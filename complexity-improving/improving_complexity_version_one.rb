# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby(*arrays)
  combined_array = []
  combined_array=arrays.reduce(:concat)

  sorted_array = [combined_array.delete_at(combined_array.length-1)]

  combined_array.each do |val|
   (0..sorted_array.length-1).each do |i|
     if val <= sorted_array[i]
       sorted_array.insert(i, val)
       break
     elsif i == sorted_array.length - 1
       sorted_array << val
       break
     end
   end
 end
 # Return the sorted array
  sorted_array
end
