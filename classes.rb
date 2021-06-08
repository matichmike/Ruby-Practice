class Student
  # replaces getters and setters on 11-17

  attr_accessor :first_name, :last_name, :email, :username
  
  # getter only
  # attr_reader :username

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  # setter and getter example
  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end

  def to_s
    "Full name: #{@first_name} #{@last_name}, Username: #{@username}, email: #{@email}"
  end
end

akihiko = Student.new("Akihiko", "Sanada", "aki_senpai", "aki.sanada@sees.jp", "tartarus")
junpei = Student.new("Junpei", "Iori", "ace_detective", "jp.iori@sees.jp", "yukatan")
puts akihiko
