# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby(*arrays)
  combined_array = []
  combined_array=arrays.reduce(:concat)
  #use bubble sort to minimize space complexity
  n = combined_array.length
  begin
    swapped = false
    (n - 1).times do |i|
      if combined_array[i] > combined_array[i + 1]
        tmp = combined_array[i]
        combined_array[i] = combined_array[i + 1]
        combined_array[i + 1] = tmp
        swapped = true
      end
    end
  end until not swapped
  combined_array
end
