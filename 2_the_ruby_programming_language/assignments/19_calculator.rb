# assignment = calculator with basic operations.

print "Frist number: "
first_num = gets.chop.to_i

print "Second number: "
second_num = gets.chop.to_i

15.times { print "-" }
puts " #{first_num} / #{second_num} = #{first_num.to_f / second_num} "
puts " #{first_num} * #{second_num} = #{first_num * second_num} "
puts " #{first_num} % #{second_num} = #{first_num % second_num} "
puts " #{first_num} + #{second_num} = #{first_num + second_num} "
puts " #{first_num} - #{second_num} = #{first_num - second_num} "
puts "---------------"
