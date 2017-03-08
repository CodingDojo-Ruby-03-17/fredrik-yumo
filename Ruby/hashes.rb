my_hash = {
  :first_name => "Fredrik",
  :last_name => "Yumo",
  :age => 26,
  :location => "Seattle"
}

my_other_hash = {}

puts my_hash.delete(:age) # => 26
puts my_hash.empty? # => false
puts my_other_hash.empty? # => true
puts my_hash.has_key?(:location) # => true
puts my_other_hash.has_key?(:location) # => false
puts my_hash.has_value?("Yumo") # => true
puts my_hash.has_value?(25) # => false
