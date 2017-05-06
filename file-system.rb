File.open("files-lessons/teams.txt", 'w+') {|f| f.write("Twins, Astros, Mets, Yankees")}

# File.new to create new file
-
# r - reading
# a - appending to a file
# w - just writing
# w+ - reading and writing
# a+ - open a file for reading and appending
# r+ - opening a file for updating, both reading and writing

file_to_save = File.new("files-lessons/other_teams.txt", 'w+')
file_to_save.puts("A's, Diamondbacks, Marineers, Marlins")
file_to_save.close

teams_one = File.read("files-lessons/teams.txt")
teams_two = File.read("files-lessons/other_teams.txt")

teams_master = teams_one.split(', ') + teams_two.split(', ')

teams_master.each do |team|
  p team.upcase

# Delete a file
File.delete("files-lessons/teams.txt")

# Append to a file
10.times do
  sleep 1
  puts "Record saved..."
  File.open("files-lessons/server_logs.txt", "a") {|f| f.puts "Server started at: #{Time.new}"}
end
