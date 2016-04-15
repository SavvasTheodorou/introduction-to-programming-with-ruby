# optional_parameters.rb

def greeting(name, options={})
  if options.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, my name is #{name} and my age is #{options[:age]} and I live in #{options[:city]}. You?"
  end
end
   
greeting("Savvas")
greeting("Savvas", { age: "18", city: "London" })
greeting("Savvas", age: "18", city: "Derby" )

      