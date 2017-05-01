# Local Variablaes
10.times do
  x = 10
end

  p x

# Global Variablaes
# the $ makes it a global variable, usually don't do it
10.times do
  $x = 10
  p x
end

# Instance  Varaibles
# @batting_average = 300
# Variable that is avail to the instance

# Constant
TEAM = "Angels"
TEAM = "Spurs"

p TEAM
# contant can change values

# Class variable, most people don't use it, just use local or instance
class myClass
  @@teams = ["A", "B"]
end

# strip
str.strip
# cleans up spaces before and after

# split
# split string into array
str.split
str.split.size
# check for number of elements

str.split(//)
# creates an element for each single letter
