# mutate method because of .pop

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# puts 
# puts "Before mutate method: #{a}"
# mutate(a)
# puts "After mutate method: #{a}"

# non mutate method because of last
# a = [1, 2, 3]

# def no_mutate(array)
#   array.last
# end

# p "Before no mutate method: #{a}"
# no_mutate(a)
# p "After no mutate method: #{a}"
# puts

# puts a.last
# puts 
# puts "Before no mutate method: #{a}"
# no_mutate(a)
# puts "After no mutate method: #{a}"


