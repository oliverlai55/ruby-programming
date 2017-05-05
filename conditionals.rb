x = 10
y = 5

if x == y
  puts "x is the same as y"
  else
    puts "x and y are not the same"
end

# Unless Method
players = ["Correa", "Carter", "Altuve"]

unless players.empty?
  players.each {|player| puts player}
end

# Or
players.each {|player| puts player} unless players.empty?
players.each {|player| puts palyer} if !players.empty?

# Multiple If Else Conditionals
x = 10
y = 100
z = 10

if x == y
  puts "x is equal to y"
elseif x >= z
  puts "x is greater or equal to z"
else
  puts "something else"
end
# if ruby finds a condition that fits, it will skip everything afterwards
