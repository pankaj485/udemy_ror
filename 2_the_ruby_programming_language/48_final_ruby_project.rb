require "46curd"

users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" },
  { username: "pank", password: "th" },
]

authenticate_user("pank", "th", users)
