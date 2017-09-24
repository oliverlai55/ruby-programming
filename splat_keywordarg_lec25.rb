# splat argument

#  Instead of passing in arguments...like this..
def roster player_1, player_2, player_3
  puts player_1
  puts player_2
  puts player_3
end


# Splat argument, allows you to pass in values like reg method, but treats like arrays
def roster *players
  puts players
end

# Add as many arguments as you want
roster "aaa", "bbb", "ccc"

# Pass in a Key Word argument
# Pass in hash value DS
def roster **players_with_positions
  players_with_positions.each do |player, position|
    puts "Player: #{player}"
    puts "Position: #{position}"
    puts "\n"
  end
end

data = {
  "Altuve": "2nd Base",
  "Alex Bregman": "3rd Base",
  "Evan Gattis": "Catcher",
  "George Springer": "OF"
}

roster data

# Optional arguments
# Dynamic Hash
def invoice options={}
  puts options[:company]
  puts options[:total]
  puts options[:something_else]
end

invoice company: "Google", total: 100.0, something_else: "abc"
