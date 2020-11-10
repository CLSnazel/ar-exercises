require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter store name: "
store_name = gets.chomp

print "Enter store revenue: "
store_rev = gets.chomp.to_i


def string_true?(str)
  yes_values = ["true", "y", "yes", "1", "yas"]
  if(yes_values.include?(str.downcase))
    return true
  end
  return false
end
print "Does the store have men's apparel?: "
store_mens = string_true?(gets.chomp)

print "Does the store have women's apparel?: "
store_womens = string_true?(gets.chomp)

puts Store.create(name: store_name, annual_revenue:store_rev, mens_apparel:store_mens, womens_apparel:store_womens)
