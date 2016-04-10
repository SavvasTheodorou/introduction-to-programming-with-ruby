# Add two strings together that, when concatenated, return 
# your first and last name as your full name in one string.
puts "Exercise 1"
puts "Savvas " + "Theodorou"

# or

first_name = "Savvas"
last_name = "Theodorou"

puts first_name + " " + last_name

# or

puts "#{first_name} #{last_name}"

puts
puts
puts "...................."
puts
puts "Exercise 2"

# Use the modulo operator, division, 
# or a combination of both to take a 4 digit number and find 
# 1) the thousands number 
# 2) the hundreds 
# 3) the tens 
# 4) and the ones.

four_digit_num = 4359

# 1) the thousands number 
puts "The thousands number of #{four_digit_num} is #{four_digit_num / 1000} "

# 2) the hundreds 
puts "The hundreds number of #{four_digit_num} is #{four_digit_num % 1000 / 100}"

# 3) the tens 
puts "The tens number of #{four_digit_num} is #{four_digit_num % 1000 % 100 / 10 }"

# 4) and the ones.
puts "The ones number of #{four_digit_num} is #{four_digit_num % 1000 % 100 % 10}"

puts
puts
puts "...................."
puts
puts "Exercise 3"

# Write a program that uses a hash to store a list of movie titles with the year 
# they came out. Then use the puts command to make your program print out the 
# year of each movie to the screen. The output for your program should look something like this.

movies = { heat: 1995, the_big_lebowski: 1998, memento: 2000, donnie_darko: 2001 }
movies.each do | title, year |
  puts year
end

puts

# printing also the title
movies.each do | t, y |
  puts "#{t.capitalize}: #{y}"
end

puts
# Solution given 
puts movies[:heat]
puts movies[:the_big_lebowski]
puts movies[:memento]
puts movies[:donnie_darko]

puts
puts
puts "...................."
puts
puts "Exercise 4"


# Use the dates from the previous example and store them in an array. Then make 
# your program output the same thing as exercise 3.

movies_array = []
movies.each do | t, y |
  movies_array << y
  # puts movies_array # mistake printed each time the year till end
end

puts movies_array

puts
puts "Using the solution"
movies_dates = [1995, 1998, 2000, 2001]

puts movies_dates[0]
puts movies_dates[1]
puts movies_dates[2]
puts movies_dates[3]
puts movies_dates[4]


puts
puts
puts "...................."
puts
puts "Exercise 5"
# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts "The factorial of 5 is #{ 5 * 4 * 3 * 2 * 1 }"
puts "The factorial of 6 is #{ 6 * 5 * 4 * 3 * 2 * 1 }"
puts "The factorial of 7 is #{ 7 * 6 * 5 * 4 * 3 * 2 * 1 }"
puts "The factorial of 8 is #{ 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 }"

# There must be an easier way
# def factorial(num)
#   new_num = num
#   factorial_num = num
#   while new_num <= 1
#     factorial_num = num * new_num
#     new_num =- 1
#     return factorial_num
#     ending_num = 0
#     return ending_num # = factorial_num + ending_num
#   end
#   puts ending_num
# end

# puts factorial 5

# Write a program that calculates the squares of 3 float numbers of your 
# choosing and outputs the result to the screen.

puts
puts
puts "...................."
puts
puts "Exercise 6"
def square(num)
  puts num * num
end

square 9.56
square 6.34
square 3.33


