def print_1_to_255
  for i in 1..255
    puts i
  end
end

def print_odd
  for i in 1..255
    next if i % 2 == 0
    puts i
  end
end

def print_sum
  sum = 0
  for i in 1..255
    sum += i
    puts "New Number: #{i} Sum: #{sum}"
  end
end

def iterate_array array
  for i in 0..array.length
    puts array[i]
  end
end

def find_max array
  max = array[0]
  for i in 1..array.length
    if array[i].to_i > max
      max = array[i]
    end
  end
  max
end

def average array
  sum = 0
  for i in 0..array.length
    sum += array[i].to_i
  end
  avg = sum / array.length
end

def odd_array
  y = []
  for i in 1..255
    if i % 2 != 0
      y.push(i)
    end
  end
  y
end

def greater_than_y array, y
  count = 0
  for i in 0..array.length
    if array[i].to_i > y
      count += 1
    end
  end
  count
end

def square array
  for i in 0..array.length
    array[i] = array[i].to_i ** 2
  end
  array
end

def no_negatives array
  for i in 0..array.length
    if array[i].to_i < 0
      array[i] = 0
    end
  end
  array
end

def max_min_avg array
  max = array[0]
  min = array[0]
  sum = array[0]
  for i in 0..array.length
    if array[i].to_i > max
      max = array[i]
    end
    if array[i].to_i < min
      min = array[i]
    end
    sum += array[i].to_i
  end
  avg = sum / array.length
  hash = { max: max, min: min, avg: avg }
end

def shift array
  for i in 0..array.length
    array[i] = array[i + 1]
  end
  array[array.length - 2] = 0
  array
end

def num_to_string array
  for i in 0..array.length
    if array[i].to_i < 0
      array[i] = "Dojo"
    end
  end
  array
end

# print_1_to_255
# print_odd
# print_sum
# iterate_array [1,2,3,4,5]
# puts find_max [1,2,3]
# puts find_max [-2, -1, -5]
# puts find_max [-4, 4, 9, -6]
# puts average [2,2,2,2]
# puts odd_array
# puts greater_than_y [1,2,3,4,5,6], 3
# puts greater_than_y [-3,-5,-6], 0
# puts square [1,2,3,4]
# puts no_negatives [1,-2,4,-5,3,-3]
# puts max_min_avg [0,1,2]
# puts max_min_avg [-4,5,2,0]
# puts max_min_avg [3,1,2,-1]
# puts shift [0,1,2,3,4,5] # needs work
# puts num_to_string [-1,3,5,-6]
# puts num_to_string [-1,-2,-3]
