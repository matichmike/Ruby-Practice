class Student
  # replaces getters and setters on 11-17
  attr_accessor :first_name, :last_name, :email, :username

  @first_name
  @last_name
  @email
  @username
  @password

  # setter and getter example
  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end


  def to_s
    "First name: #{@first_name}"
  end
end

test_example = Student.new
test_example.first_name = "Akihiko"
puts test_example.first_name