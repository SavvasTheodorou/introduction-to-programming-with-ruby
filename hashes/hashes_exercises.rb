# 1. Given a hash of family members, with keys as the title and an array of names 
# as the values, use Ruby's built-in select method to gather only immediate 
# family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family_immediate = family.select { |k,v| k == :sisters || k == :brothers }
arr = family_immediate.values.flatten
puts arr

puts
puts "............."
puts

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the 
# difference between merge and merge!? Write a program that uses both and 
# illustrate the differences.

person = {}
name = { name: "John" }
height = { height: 178 }

person = name.merge(height)
puts person

p name.merge(height)
p name
p name.merge!(height)

