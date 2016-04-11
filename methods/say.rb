puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

puts
puts
puts


# say.rb refactored

def say(words)
  puts words + "."
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

puts
puts
puts

# say.rb refactored again

def say(words = "hello")
  puts words + "."
end

say()
say("hi")
say("how are you")
say("I'm fine")
