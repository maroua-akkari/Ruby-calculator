puts "Enter your name"
name = gets.chomp
puts "Hello " + name + " use this sparta calculator"

puts "Which calculator would you like to use (a) advanced or (b) basic or (c) BMI or (d) trip?"
calc_type = gets.chomp
if calc_type == "a"
  puts "You are now using the advanced calculator, would you like to use the (s)square root or (p)power to"
  advanced_calc_type = gets.chomp
  if advanced_calc_type == "s"
    puts "Enter the number you want to square root"
    first_number = gets.chomp.to_f
    calculation = Math.sqrt(first_number)
    puts calculation
end
  if advanced_calc_type == "p"
    puts "Enter your first number"
    first_number = gets.chomp.to_f
    puts "To what power"
    power = gets.chomp
    calculation = first_number ** power
    puts calculation
  end
end

if calc_type == "b"
  puts "You are now using the basic calculator"
  puts "Enter your first number"
  first_number = gets.chomp
  f_first_number = eval(first_number).to_f
  s_first_number = f_first_number.to_s
  puts "Which operator would you like to use? + - / *"
  operator = gets.chomp
  puts "Enter your second number"
  second_number = gets.chomp
  calculation = "#{first_number} #{operator} #{second_number} = #{eval(s_first_number + operator + second_number)}"
  puts calculation
end

if calc_type == "c"
  puts "You are now using the BMI calculator"
  puts "Enter measuring units (m) metric or (i) imperial"
  units = gets.chomp
    if units == "m"
      puts "Enter your height in cm"
      height_cm = gets.chomp.to_f
      height_in_ms = ((height_cm/100) ** 2)
      puts "Enter your weight in kg"
      weight = gets.chomp.to_f
      calculation = weight/height_in_ms
      puts calculation
    end
    if units == "i"
      puts "Enter your height in inches"
      height_i = gets.chomp.to_f
      height_in_inches = (height_i** 2)
      puts "Enter your weight in pounds"
      weight = gets.chomp.to_f
      calculation = (weight/height_in_inches)*703
      puts calculation
    end
end


if calc_type == "d"
  puts "You are now using the journey time and price calculator"
    puts "Enter your distance (miles)"
    distance = gets.chomp.to_f
    puts "Enter your speed (MPH)"
    speed = gets.chomp.to_f
    time = distance/speed
    puts "Enter your fuel efficiency(mpg)"
    fuel_eff = gets.chomp.to_f
    puts "Enter your cost per gallon(£)"
    cost_per_g = gets.chomp.to_f
    price = ((distance / fuel_eff)*cost_per_g)
    puts "Your journey will cost £#{price} and take #{time} hours"
  end
