# A setter updates the value of a variable, while a getter reads the value of a variable.
# We can have separate getter and setter methods but it’s not the best practice.
# These are mostly used with instance variables.

# using attribute accessors, we don’t have to define any methods in order to access instance variables.
# Instead, we can define them in the attribute accessors as a symbol that is accessible by objects easily.

# example

class Student
  # using attribute accessors for first_name and last_name
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

pank = Student.new("pank", "th")

puts pank
puts pank
