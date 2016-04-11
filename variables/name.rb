puts "Hey there! What's your name?"
name = gets.chomp
puts "Welcome to Banshee #{name}. Have a lovely stay!"

# Print the name ten times
puts
puts
10.times do
  puts name
end

# Ask full name
puts
puts

puts "Hey there! What's your first name?"
first_name = gets.chomp
puts "and your last name is?"
last_name = gets.chomp
puts "Welcome to Banshee #{first_name} #{last_name}. Have a lovely stay!"
