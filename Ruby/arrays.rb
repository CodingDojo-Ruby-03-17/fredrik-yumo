a = [1,2,3,4,5,6]

# puts a.at(2) # => 3
# puts a.fetch(2) # => 3
# puts a.delete(2) # => 2
# puts a.reverse # => [6,5,4,3,2,1]
# puts a.length # => 6
# puts a.sort # => [1,2,3,4,5,6]
# puts a.slice(4) # => 5
# puts a.slice(2,4) # => 3,4,5,6
# puts a.shuffle # => 4,1,6,3,5,2
# puts a.join # => 123456
# puts a.insert(4, "here") [1,2,3,4,"here",5,6]
# puts a.values_at(5) # => 6

b = [1,2,"yes",["I","am","here"]]
puts b.values_at(3) # => ["I", "am", "here"]
