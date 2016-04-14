# fibonacci.rb

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts "Please enter a number to calculate fibonacci"
number = gets.chomp.to_i

while number != 5
  puts "Please enter a number to calculate fibonacci"
  number = gets.chomp.to_i
  puts fibonacci(number)
end