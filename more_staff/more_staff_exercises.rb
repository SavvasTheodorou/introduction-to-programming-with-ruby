# 1. Write a program that checks if the sequence of characters "lab" exists in 
# the following strings. If it does exist, print out the word. - "laboratory" - 
# "experiment" - "Pans Labyrinth" - "elaborate" - "polar bear"

check_arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

check_arr.each do |word|
  if word.match(/lab/)
    puts word
  else
    puts "The word #{word} does not contain the sequence of characters lab"
  end
  puts "........."
end


# given solution
# def check_in(word)
#   if /lab/i =~ word # the i in regex is for case sensitivity
#     puts word
#   else
#     puts "No match"
#   end
# end


# check_in("laboratory")
# check_in("experiment")
# check_in("Pans Labyrinth")
# check_in("elaborate")
# check_in("polar bear")

# 2. What will the following program print to the screen? What will it return?
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }