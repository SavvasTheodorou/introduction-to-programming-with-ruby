# 2. Write a while loop that takes input from the user, performs an
# action, and only stops when the user types "STOP". Each loop 
# can get info from the user.

puts "What would you like to eat?"
answer = gets.chomp

while answer != "stop" do
  puts "We don't have that. Do you want something else?"
  answer = gets.chomp.downcase
end

puts
puts "..............."
puts

# 3. Use the each_with_index method to iterate through an array of your creation 
# that prints each index and value of the array.

array = ["Mike", "Savvas", "John", "Hector"]

array.each_with_index do | name, index |
  puts "#{index + 1}: #{name}"
end


puts
puts "..............."
puts

# 4. Write a method that counts down to zero using recursion.

puts "Countdown from?"
number = gets.chomp.to_i

def counting_down(number)
  if number <= 0
    puts number
  else
    puts number
    counting_down(number - 1)
  end
end

counting_down(number)

puts "Countdown again?"
count_again = gets.chomp.downcase


while count_again != "no"
  puts "Countdown from?"
  number = gets.chomp.to_i
  counting_down(number)
  puts "Countdown again?"
  count_again = gets.chomp.downcase
end

puts "We are now stopping the countdown"