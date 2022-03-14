# - we can multiply strings which is concatenation in the end.
#     example: `"hello "*3` gives `"hello hello hello"`
# - strings can’t be multiplied
#     example: `"5"+"5"` is not valid ruby code
# - if string can’t be converted to integer then it returns 0
#     example: `"hello".to_i` gives `0`

# * assignment = calculator with basic operations.

print "Frist number: "
first_num = gets.chop.to_i

print "Second number: "
second_num = gets.chop.to_i

puts "---------------"
puts " #{first_num} / #{second_num} = #{first_num.to_f / second_num} "
puts " #{first_num} * #{second_num} = #{first_num * second_num} "
puts " #{first_num} % #{second_num} = #{first_num % second_num} "
puts " #{first_num} + #{second_num} = #{first_num + second_num} "
puts " #{first_num} - #{second_num} = #{first_num - second_num} "
puts "---------------"
