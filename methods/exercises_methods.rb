# Write a program that prints a greeting message. This program should contain
# a method called greeting that takes a name as its parameter and returns a string.

# def greeting(name)
#   "Welcome #{name}"
# end

# puts "What's your name?"
# name = gets.chomp
# puts greeting(name)

# Write a program that includes a method called multiply that takes two arguments
# and returns the product of the two numbers.

# def multiply(num1, num2)
#   return num1 * num2
# end

# multiply(2, 3)
# puts multiply(6, 9)

# Edit the method in exercise #4 so that it does print words on the screen. 

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")