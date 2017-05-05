x = [22, 3, 45, 341, 3, 983]

y = Array.new
y[0] = 543
y[10] = 432
# Assign 10th element
y.each do |i|
  puts i
end

x = ['a', 23, 'cd', true, 4, 4, 4, 4]
x.delete(4)
# deletes the 4

x.delete_at(2)
# deletes the 2 index of array and returns the value of the deleted value

# deletes all values < 0.24
batting_averages = [0.300, 0.180, 0.220, 0.250]
batting_averages.delete_if {|average| average < 0.24}

# join
team = ["astros", "yankees", "rangers", "mets", "cardinals"]
teams.join(',')
# iterates each value, turns into a long string, with a seperator
# can take , -  &

# push and pop
teams.push("marlins")
teams.push("red sox", "blue jays")
# can push multiple items
teams.pop

# pops the value and returns it, and store it in the z value
z = teams.pop


# Hash
# Key value pair collection
# Modern syntax
positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa" }

positions = { "first_base" => "Chris Carter", "second_base"  => "Jose Altuve", "short_stop" => "Carlos Correa" }

positions = { :first_base => "Chris Carter", :second_base  => "Jose Altuve", :short_stop => "Carlos Correa" }

# grabbing certain position
# Ability to know what the key is
positions[:second_base]

# Delete a hash
people = {jordan: 32, tiffany: 27, kristine: 10, heather: 29}
people[:tiffany]

# deletes the hash
people.delete(:kristine)

# Iterating over Hashes
people = {jordan: 32, tiffany: 27, kristine: 10, heather: 29}
# Only print out the keys
people.each_key do |key|
  puts key
end

# print out values
people.each_value do |value|
  puts value
end

# Add Hashes
people[:leann] = 42
people.invert
# changes to show age : name

people_2 = people.invert
people.merge(people_2)
# this merges two diff hashes

# converting hashes to array
people.to_a

people.keys
# prints out all the keys into an array

people.values
# prints out all the values into an array
