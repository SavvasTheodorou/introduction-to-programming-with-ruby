# about variable scope

a = 5 # variable initialized in the outer scope, outside a block

3.times do | n |
  a = 3
end

puts a

puts
puts
puts "....................."
puts
puts

a = 5

def some_method
  a = 3
end

puts a

puts
puts
puts "....................."
puts
puts

arr = [1, 2, 3]

for i in arr do
  c = 8
end

puts c

puts
puts
puts "....................."
puts
puts

# Constant variable
MY_CONSTANT = "I am available throughout your app"

# Global Variable
$var = "I am also available throughout your app"

# Class variable
@@instances = 0

# Instance variable
@var = 'I am available throughout the current instance of this class.'

# Local variable
dude = "I've used this, have no idea what the other four are for!"


