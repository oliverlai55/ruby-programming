p "Astros".swapcase
#  reverse, upcase

str = "The quick brown fox jumped over the quick dog"

# only replaces the first matched word
p str.sub "quick", "slow"

# global replace
p str.gsub "quick", "slow"

# gsub by itself doesn't change the string values

# permanently changing the string
p str.gsub! "quick", "slow"
