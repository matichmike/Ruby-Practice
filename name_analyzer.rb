puts "whats your first name"
first_name = gets.chomp
puts "whats your last name"
last_name = gets.chomp
full_name = "#{first_name} #{last_name}"
puts "Your fullname is #{full_name}"
puts "Your fullname reversed is #{full_name.reverse}"
puts "Your name has #{full_name.length - 1} characters"