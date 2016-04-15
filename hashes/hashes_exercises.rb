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

puts
puts "............."
puts

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through
# a hash and prints all of the keys. Then write a program that does the same 
# thing except printing the values. Finally, write a program that prints both.


family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.each do | k, v |
  puts k
end

puts
puts "............."
puts

puts family.values

puts
puts "............."
puts

family.each do | k, v |
  v.each do |v|
    puts "#{v.capitalize} is one of my #{k}"
  end
end

puts
puts "............."
puts

# 4. Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]

puts
puts "............."
puts

# 5. What method could you use to find out if a Hash contains a specific value in 
# it? Write a program to demonstrate this use.

person2 = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person2.has_value?("Bob")
p person2.has_value?(100)

# 6. Write a program that prints out groups of words that are anagrams. Anagrams 
# are words that have the same exact letters in them but in a different order. 
# Your output should look something like this:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    p result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end
