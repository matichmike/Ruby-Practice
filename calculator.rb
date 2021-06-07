def calc(num1, num2, operator)
  if operator == 1
    num1 + num2
  elsif operator == 2
    num1 - num2
  elsif operator == 3
    num1.to_f / num2.to_f
  elsif operator == 4
    num1.to_f * num2.to_f
  elsif operator == 5
    num1.to_f % num2.to_f
  end
end

puts "first num"
num1 = gets.chomp.to_i
puts "second num"
num2 = gets.chomp.to_i
puts "1 for add, 2 to subtract, 3 to divide, 4 to multiply, 5 for remainder"
operator = gets.chomp.to_i
puts "your have selected #{operator}"
puts "here is the result #{calc(num1, num2, operator)}"