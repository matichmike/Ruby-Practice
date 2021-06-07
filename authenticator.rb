users = [
  {username: "Makoto", password: "password1"},
  {username: "Yukari", password: "password2"},
  {username: "Mitsuru", password: "password3"},
  {username: "Aigis", password: "password4"},
  {username: "Fuuka", password: "password5"},
]

# initial method
# def auth_user(username, password, list_of_users)
#   list_of_users.each do |user|
#     if user[:username] == username && user[:password] == password
#       return user
#     end
#   end
#   "Invalid credentials"
# end

# more compact method
def auth_user(username, password, users_list)
  if users_list.include?({username: username, password: password})
    return {username: username, password: password}
  end
  "Invalid credentials"
end

puts "Welcome to authenticator"
25.times {print "-"}
puts
puts "The program takes an input of username and password, compares it and returns the user object"

attempts = 1;

while attempts < 4
  print "Username: "
  username = gets.chomp.capitalize
  print "Password: "
  password = gets.chomp
  auth = auth_user(username, password, users)
  puts auth
  puts "Press n to quit"
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end

puts "Number of attempts exceeded the limit" if attempts == 4