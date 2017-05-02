# splat argument
def roster *players
  puts players
end

# Add as many arguments as you want
roster "aaa", "bbb", "ccc"

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


# Dynamic Hash
def invoice options={}
  puts options[:company]
  puts options[:total]
  puts options[:something_else]
end

invoice company: "Google", total: 100.0, something_else: "abc"
