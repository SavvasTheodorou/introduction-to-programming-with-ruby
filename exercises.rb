# 1. Use the each method of Array to iterate over 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |v| puts v}

# 2. Same as above, but only print out values greater than 5.
puts
puts '..............'
puts
new_arr = []
arr.each do |value|
  if value > 5
    puts value
    new_arr << value
  end
end

# 3. Now, using the same array from #2, use the select method to extract all 
# odd numbers into a new array.
puts
puts '..............'
puts

odd_arr = new_arr.select { |num| num.odd? }
p odd_arr


# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.

puts
puts '..............'
puts

arr << 11
arr.unshift(0)

p arr

# 5. Get rid of "11". And append a "3".

puts
puts '..............'
puts

arr.pop
arr.push(3)

p arr

# 6. Get rid of duplicates without specifically removing any one value.

puts
puts '..............'
puts

arr.uniq

puts arr
p arr

# 8. Create a Hash using both Ruby syntax styles.

puts
puts '..............'
puts

hash = { :animal => "dog" }
hash = { animal: "dog" }

# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

h = {a:1, b:2, c:3, d:4}

# 9.1. Get the value of key `:b`.
p h[:b]

# 9.2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h

# 3. Remove all key:value pairs whose value is less than 3.5

# h.select! { |k,v| v > 3.5 }
# p h

h.delete_if { |k,v| v < 3.5 }
p h


# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)

puts
puts '..............'
puts

hash = { name: "John", cars: ["BMW", "Alfa Romeo"] }
array = [{name: "John"}, "age", {age: 35}]

# 11. Look at several Rails/Ruby online API sources and say which one you like
# best and why.

# I like http://ruby-doc.org/core-2.2.4/ because of the search for methods. 
# In my opinion http://apidock.com/ is a very good source because of the examples 
# but it covers upto V1.9.x so most probably 
# I will be using http://ruby-doc.org/core-2.2.4/

# 12. Given the following data structures. Write a program that moves the 
# information from the array into the empty hash that applies to the correct person.

puts
puts '..............'
puts

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

# 13. Using the hash you created from the previous exercise, demonstrate how 
# you would access Joe's email and Sally's phone number?

puts
puts '..............'
puts

p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]

puts "Joe's email is #{contacts["Joe Smith"][:email]}."
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}."

# 14. In exercise 12, we manually set the contacts hash values one by one. 
# Now, programmatically loop or iterate over the contacts hash from exercise 12, 
# and populate the associated data from the contact_data array. Hint: you will 
# probably need to iterate over ([:email, :address, :phone]), and some helpful 
# methods might be the Array shift and first methods.


contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts = {"Joe Smith" => {}}

fields = [:email, :address, :phone]
# As a bonus, see if you can figure out how to make it work with multiple 
# entries in the contacts hash.

contacts.each do |k, v|
  fields.each do |field|
    v[field] = contact_data.shift
  end
end

p contacts

# With the bonus. I could not find the answer, need to review!!

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts

# 15. Use Ruby's Array method delete_if and String method start_with? to 
# delete all of the words that begin with an "s" in the following array.

puts
puts '..............'
puts

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") }
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |word| word.start_with?("s") || word.start_with?("w") }
# p arr

arr.delete_if { |word| word.start_with?("s", "w") }
p arr

# 16. Take the following array:

# a = ['white snow', 'winter wonderland', 'melting ice',
#     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using 
# Array's map and flatten methods, as well as String's split method.

puts
puts '..............'
puts

a = ['white snow', 'winter wonderland', 'melting ice',
    'slippery sidewalk', 'salted roads', 'white trees']

a.map! { |words| words.split(" ") }.flatten!
p a


# 17. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# The hashes are the same but syntax is messed up

