puts "Name an animal"
animal = gets.chomp

puts "Name a noun"
noun = gets.chomp

# Has to be double quotes
# if its single quotes, it will print out literal string
# Inside curly bracket can be a ruby program
p "The quick brown #{animal} jumped over the lazy #{noun}"
p "Do calculation: #{ 2 + 2}"
