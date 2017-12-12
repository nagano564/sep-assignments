def worstcase(n)
  collection=[]
  count = 1
  n.times do |x|
    collection << x+1
  end
  puts collection
  collection.each do |y|
    break if n === y
    count += 1
  end
# outputs the worst case number of iterations (the last item)
  count
end
