# 1. Below we have given you an array and a number. Write a program that checks to 
# see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is includes in the array!"
end

puts
puts "..............."
puts

# 2. What will the following programs return? What is value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3)) 
p arr.first.delete(arr.first.last)

arr = ["b", "a"]
arr = arr.product([Array(1..3)]) 
p arr.first.delete(arr.first.last) 

puts
puts "..............."
puts

# 3. How do you print the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]
puts arr.last.first

puts
puts "..............."
puts

# 7. Write a program that iterates over an array and builds a new array that is the
# result of incrementing each value in the original array by a value of 2. You
# should have two arrays at the end of this program, The original array and the
# new array you've created. Print both arrays to the screen using the p method
# instead of puts.

arr1 = [1, 2, 3, 4, 5, 6]
arr2 = []

arr1.each do | num |
  arr2 << num + 2
end

p arr1
p arr2
