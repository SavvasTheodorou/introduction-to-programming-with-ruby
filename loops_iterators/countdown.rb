# countdown.rb

# puts "Enter the number of loops you want"
# x = gets.chomp.to_i

# while x >= 0
#   puts x
#   x -= 1
#   # if x == 10
#   #   break
#   # end
# end

# puts "Done Dude!!!"

puts "Enter the number of loops you want"
x = gets.chomp.to_i
puts "Counting down ....."
until x < 0
  puts x
  x -= 1
  # if x == 10
  #   break
  # end
end

puts "Done Dude!!!"