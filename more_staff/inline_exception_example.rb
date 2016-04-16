# inline_exception_example.rb

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

puts 
puts ".............."
puts

arr = [1, 2, 3, 4, 5]
puts "Before each call"
arr.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"