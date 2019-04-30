puts "Enter your name"
name = gets.chomp
puts "Hello " + name + " use this sparta calculator"

puts "Which calculator would you like to use (a) advanced or (b) basic?"
calc_type = gets.chomp
if calc_type == "a"
  puts "You are now using the advanced calculator"
  puts "Enter your first number"
  first_number = gets.chomp
  puts "Which operator would you like to use? + - / *"
  operator = gets.chomp
  puts "Enter your second number"
  second_number = gets.chomp
  calculation = eval(first_number + operator + second_number)
  puts calculation
end
if calc_type == "b"
  puts "You are now using the basic calculator"
end
