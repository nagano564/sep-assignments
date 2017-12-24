# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby(*arrays)
  combined_array = []
  #combining all the arrays into one.
  arrays.each do |array|
    puts "Array - #{array}"
    array.each do |value|
      puts "Value - #{value}"
      combined_array << value
    end
  end
  puts "combined array: #{combined_array}"
  sorted_array = [combined_array.delete_at(combined_array.length-1)]

  for val in combined_array
    puts "Val: #{val}"
    i = 0
    while i < sorted_array.length
      puts "Sorted Array: #{sorted_array}"
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
end
