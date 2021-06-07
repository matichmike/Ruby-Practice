dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301"
}

def get_city_names(hash)
  hash.keys
end

def get_area_code(hash, key)
  hash[key]
end

loop do
  puts "Do you want to search for an area by city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Please choose from the following list:"
  puts get_city_names(dial_book)
  city_answer = gets.chomp.split.join.downcase
  if dial_book.keys.include?(city_answer)
    puts "The area code for #{city_answer} is #{get_area_code(dial_book, city_answer)}"
  else
    puts "City not found"
  end
end