# local data
$users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" },
  { username: "pank", password: "th" },
]

# setting up global varibales
$authenticated = false
$wants_to_continue = true
$attempt_to_login = 1

# starting template
puts "Welcome to the authenticator"

25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

# method to authenticate user input aganist hash database
def authenticate_user
  $users.each { |user|
    # destructing key and values from local database into variable
    db_username = user[:username]
    db_password = user[:password]

    # checking if both inputs matches to local database
    if (db_username == $input_username) && (db_password == $input_password)
      # since authentication condition is passed, returning with authenticated message
      $authenticated = true
      return puts "=========== authenticated as \"#{db_username}\" =========== "
    end
  }
  # since authentication condition isn't passed, returning with non-authenticated message
  puts "=========== couldn't authenticate =========== "
end

# main loop which keeps on execute unless user input turns it to false
while $wants_to_continue
  # keeping track of num of attempts
  puts "Attempt count: #{$attempt_to_login}"

  # getting inputs from user
  print "Username: "
  $input_username = gets.chomp.to_s
  print "Password: "
  $input_password = gets.chomp.to_s

  # authenticating user input with local database
  authenticate_user()

  # ask for user decision to quit or continue program
  puts "press any key to continud or press q to quit"
  user_decision = gets.chop.to_s

  # altering conditional value if user wants to quit
  $wants_to_continue = false if (user_decision == "q")
  # printing good bye message if user choose to quit
  puts "=========== Good Bye! =========== " if (!$wants_to_continue)

  # iterating login atempt count on each loop execution
  $attempt_to_login += 1
end
