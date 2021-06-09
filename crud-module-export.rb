require_relative 'crud'

users = [
  {username: "Makoto", password: "password1"},
  {username: "Yukari", password: "password2"},
  {username: "Mitsuru", password: "password3"},
  {username: "Aigis", password: "password4"},
  {username: "Fuuka", password: "password5"},
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users