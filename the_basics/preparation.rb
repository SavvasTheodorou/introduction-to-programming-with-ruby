# First test to use Pry
require "pry"

a = [1, 2, 3]
a << 4

binding.pry # execution will pause here, allowing inspection of all objects
puts a

# I must be doing something wrong, cloud9 doesn't play well with pry..