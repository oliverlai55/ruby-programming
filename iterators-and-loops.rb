# While Loop
i = 0

while i < 10
  puts "Hey there"
  i += 1
end

# Each Iterator
arr = [23, 2343, 343, 34543, 2345]

arr.each do |i|
  p i
end

# shorter way to do it
arr.each { |i| p i }


# For In Loop
for i in 0..42
  p i
end

# Iterator
teams = {
  "Spurs" => {
    "PG" => "Parker",
    "SF" => "Leonard",
    "CENTER" => "Duncan"
  },
  "Thunder" => {
    "PG" => "Westbrook",
    "SF" => "Ibaka",
    "CENTER" => "Adams"
  }
}

teams.each do |team, players|
  puts team
  players.each do |position, player|
    p "#{player} stars at #{position}"
  end
end
