# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32.
# Print the sum of all numbers in the array.
# Also have the function return an array that only include numbers that are
# greater than 10 (e.g. when you pass the array above, it should return an array
# with the values of 13,25,32 - hint: use reject or find_all method)

a = [3,5,1,2,7,9,8,13,25,32]
sum = 0
for i in 0...a.length
  sum += a[i]
end
puts "Sum = #{sum}"
puts a.reject { |i| i < 10 }

# Create an array with the following values: John, KB, Oliver, Cory, Matthew,
# Christopher. Shuffle the array and print the name of each person.
# Have the program also return an array with names that are longer than 5 characters.

b = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
b.shuffle!
puts b
puts "The length of these names are greater than 5 characters:"
puts b.reject { |i| i.length < 5 }

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
# Shuffle the array and display the last letter of the array.
# Have it also display the first letter of the array.
# If the first letter in the array is a vowel, have it display a message.

c = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N",
    "O","P","Q","R","S","T","U","V","W","X","Y","Z"]
c.shuffle!
puts "The last letter is #{c[c.length - 1]}"
puts "The first letter is #{c[0]}"
puts "The first letter in this new array is a vowel!" if c[0].match('[aeiou]')

# Generate an array with 10 random numbers between 55-100.

d = []
for i in 1..10
  d.push(rand(55..100))
end
puts d

# Generate an array with 10 random numbers between 55-100 and have it be sorted
# (showing the smallest number in the beginning). Display all the numbers in the arrays.
# Next, display the minimum value in the array as well as the maximum value.

e = []
for i in 1..10
  e.push(rand(55..100))
end
e.sort
max = e[0]
min = e[0]
for i in 0...e.length
  if e[i] > max
    max = e[i]
  end
  if e[i] < min
    min = e[i]
  end
end
puts e
puts "The max is #{max}"
puts "The min is #{min}"

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

str = ""
for i in 1..5
  str += (65 + rand(26)).chr
end
puts str

# Generate an array with 10 random strings that are each 5 characters long

f = []
for i in 1..10
  str = ""
  for j in 1..5
    str += (65 + rand(26)).chr
  end
  f.push(str)
end
puts f
