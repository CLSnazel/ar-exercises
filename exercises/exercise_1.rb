require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.new()
burnaby.name = "Burnaby"
burnaby.annual_revenue = 300000
burnaby.womens_apparel = true
burnaby.mens_apparel = true
burnaby.save

richmond = Store.new(name:"Richmond", annual_revenue:126000, womens_apparel:true, mens_apparel:false)
richmond.save

gastown = Store.new(name:"Gastown", annual_revenue:190000, mens_apparel:true, womens_apparel:false)
gastown.save

puts Store.count

