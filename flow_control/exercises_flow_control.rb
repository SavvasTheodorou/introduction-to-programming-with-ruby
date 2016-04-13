# test in irb
(32 * 4) >= 129 # false
false != !true # false
true == 4 # false
false == (847 == '847') # true
(!true || (!(100/5) == 20 ) || ((328 / 4) == 82)) # true

puts
puts "........................"
puts

# Write a method that takes a string as argument. The method should return the 
# all-caps version of the string, only if the string is longer than 10 characters.
# Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has 
# a few methods that would be helpful. Check the Ruby Docs!)

def method(str)
  if str.length > 10
    puts str.upcase
  else
    puts "String given is less than 10 characters"
  end
end

method("test")
method("testing more than 10 characters")

puts
puts "........................"
puts

# Write a program that takes a number from the user between 0 and 100 and 
# reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

def find_between_if(number)
  if number.between?(0, 50)
      puts "#{number} is between 0 and 50"
    elsif number.between?(51, 100)
      puts "#{number} is between 51 and 100"
    elsif number > 100
      puts "#{number} is over 100"
    else number < 0
      puts "You can not enter a negative number"
  end
end
find_between_if(number)

puts
puts "........................"
puts

# What will each block of code below print to the screen? Write your answer on a 
# piece of paper or in a text editor and then run each block of code to see if 
# you were correct.

# 1. / false
'4' == 4 ? puts("TRUE") : puts("FALSE")

# 2. / Did you get it right?
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
 puts "Did you get it right?"
else
 puts "Did you?"
end

# 3. / Alright now!.
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

puts
puts "........................"
puts

# Rewrite your program from exercise 3 using a case statement. Wrap the statement
# from exercise 3 in a method and wrap this new case statement in a method. Make 
# sure they both still work.

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

def find_between_case(number)
  case number
  when 0..50
    puts "#{number} is between 0 and 50"
  when 51..100
    puts "#{number} is between 51 and 100"
  else
    if number > 100
      puts "#{number} is over 100"
    else
      puts "Number can not be negative"
    end
  end
end

find_between_case(number)