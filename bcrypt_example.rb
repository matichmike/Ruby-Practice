require 'bcrypt'

my_password = BCrypt::Password.create("my password")

puts my_password

hashed_pw = BCrypt::Password.new("$2a$12$BK2j4OyT182E1NVVOfQrEuu5DMpZmFFKh.ijl.SBUDwc2lV0OSYK.")

puts hashed_pw == "my password"