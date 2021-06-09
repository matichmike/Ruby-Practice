require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "Full name: #{@first_name} #{@last_name}, Username: #{@username}, email: #{@email}"
  end
end

akihiko = Student.new("Akihiko", "Sanada", "aki_senpai", "aki.sanada@sees.jp", "tartarus")

hashed_password = akihiko.create_hash_digest(akihiko.password)

puts hashed_password
