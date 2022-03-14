# Hash of Area Codes
dial_book = {
  "New York" => "212",
  "New Brunswick" => "732",
  "Edison" => "908",
  "Plainsboro" => "609",
  "San Francisco" => "301",
  "Miami" => "305",
  "Palo Alto" => "650",
  "Evanston" => "847",
  "Orlando" => "407",
  "Lancaster" => "717",
}

# Get city names from the hash
def get_city_names(some_hash)
  return some_hash.keys
end

# Get area code based on given hash and key
def get_area_code(some_hash, key)
  user_input_key = key.split.map(&:capitalize).join(" ") # turning each word of string into capitalized one

  if some_hash.include?(user_input_key)
    # verify key-value pair to be valid if condition passes and print desired output.
    35.times { print "=" }
    puts
    puts "The area code for #{user_input_key} is #{some_hash[user_input_key]}"
  else
    # if key-value doesn't match, print the appropriate text.
    puts "please provide valid input! "
  end
end

# Execution flow
loop do
  # initial rendering and taking user input
  print "Do you want to lookup an area based on a city name?(Y/N): "
  user_decision = gets.chomp.to_s.downcase

  # exit if user chooses not to continue
  break if user_decision != "y"

  # asking for input of city to look for pin code
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)

  # getting input for user's city
  print "Enter your selection: "
  user_choice_city = gets.chomp.to_s.downcase

  # get area code based on the local hash data and user input
  get_area_code(dial_book, user_choice_city)
end
