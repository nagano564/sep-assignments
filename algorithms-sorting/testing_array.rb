require 'benchmark'
# unsorted_array = []
# 50.times do |count|
#   unsorted_array << count
# end
# unsorted_array.shuffle!



unsorted_array = [14, 30, 7, 25, 9, 34, 46, 29, 27, 13, 5, 49, 37, 33, 4, 12, 22, 11, 2, 48, 47, 10, 19, 3, 40, 8, 36, 23, 43, 15, 20, 28,
    16, 18, 17, 44, 31, 41, 38, 32, 45, 1, 39, 0, 6, 26, 21, 42, 35, 24]
require_relative 'heap_sort'
result1 = Benchmark.measure {
  heapsort(unsorted_array)
}

unsorted_array = [14, 30, 7, 25, 9, 34, 46, 29, 27, 13, 5, 49, 37, 33, 4, 12, 22, 11, 2, 48, 47, 10, 19, 3, 40, 8, 36, 23, 43, 15, 20, 28,
  16, 18, 17, 44, 31, 41, 38, 32, 45, 1, 39, 0, 6, 26, 21, 42, 35, 24]
require_relative 'bubble_sort'
result2 = Benchmark.measure {
  bubble_sort(unsorted_array)
}

unsorted_array = [14, 30, 7, 25, 9, 34, 46, 29, 27, 13, 5, 49, 37, 33, 4, 12, 22, 11, 2, 48, 47, 10, 19, 3, 40, 8, 36, 23, 43, 15, 20, 28,
  16, 18, 17, 44, 31, 41, 38, 32, 45, 1, 39, 0, 6, 26, 21, 42, 35, 24]
require_relative 'bucket_sort'
result3 = Benchmark.measure {
  bucketsort(unsorted_array)
}

unsorted_array = [14, 30, 7, 25, 9, 34, 46, 29, 27, 13, 5, 49, 37, 33, 4, 12, 22, 11, 2, 48, 47, 10, 19, 3, 40, 8, 36, 23, 43, 15, 20, 28,
  16, 18, 17, 44, 31, 41, 38, 32, 45, 1, 39, 0, 6, 26, 21, 42, 35, 24]
require_relative 'insertion_sort'
result4 = Benchmark.measure {
  insertion_sort(unsorted_array)
}

unsorted_array = [14, 30, 7, 25, 9, 34, 46, 29, 27, 13, 5, 49, 37, 33, 4, 12, 22, 11, 2, 48, 47, 10, 19, 3, 40, 8, 36, 23, 43, 15, 20, 28,
  16, 18, 17, 44, 31, 41, 38, 32, 45, 1, 39, 0, 6, 26, 21, 42, 35, 24]
require_relative 'merge_sort'
result5 = Benchmark.measure {
  merge_sort(unsorted_array)
}

unsorted_array = [14, 30, 7, 25, 9, 34, 46, 29, 27, 13, 5, 49, 37, 33, 4, 12, 22, 11, 2, 48, 47, 10, 19, 3, 40, 8, 36, 23, 43, 15, 20, 28,
  16, 18, 17, 44, 31, 41, 38, 32, 45, 1, 39, 0, 6, 26, 21, 42, 35, 24]
require_relative 'quick_sort'
result6 = Benchmark.measure {
  quicksort(unsorted_array)
}

unsorted_array = [14, 30, 7, 25, 9, 34, 46, 29, 27, 13, 5, 49, 37, 33, 4, 12, 22, 11, 2, 48, 47, 10, 19, 3, 40, 8, 36, 23, 43, 15, 20, 28,
  16, 18, 17, 44, 31, 41, 38, 32, 45, 1, 39, 0, 6, 26, 21, 42, 35, 24]
require_relative 'selection_sort'
result7 = Benchmark.measure {
  selection_sort(unsorted_array)
}
