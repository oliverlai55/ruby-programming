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

# Enumerators
# SELECT Statement selects items
# Given an array of integers
# ONly grab the even integers
(1..10).to_a.select do |x|
  x.even?
end

(1..10).to_a.select { |x| x.even? }

(1..10).to_a.select(&:even?)
# most common
# & is passing in a block, expecting an array of values, collection
# bypass having iterator variable

# Given an array of strings
# Return only the words that are over 5 letters
arr = %w(The quick brown fox jumped over the lazy dog)
# %w converts each word into an array

arr.select { |x| x.length > 5 }


# Return all of the vowels

%w(a b c d e f g).select { |v| v =~ /[aeiou]/ }
# =~ regex selector

# Map
# Change to Intergers
["1", "23.0", "0", "4"].map {|x| x.to_i }
["1", "23.0", "0", "4"].map(&:to_i)

# duplicates every letter within that range
("a".."g").to_a.map {|i| i * 2}

# set up hash with key value of x to x (interger)
Hash[[1, 2.1, 3.33, 0.9].map {|x| [x,x.to_i]}]

# Set up hash with each word into array with its respective length value
Hash[%w(A dynamic open source programming language).map {|x| [x, x.length]}]


{:a => "foo", :b => "bar"}.map{|a, b| "#{a}=#{b}"}.join('&')
{:a => "foo", :b => "bar", :lat => "120.343", :long => "33.212"}.map{|a, b| "#{a}=#{b}"}.join('&')


# Add Total together
# the + is a method, not an operator, to determine sum total
[2, 31, 5, 622, 7, 3, 45].inject(&:+)

# the * is a method, which is why all this can be passing method in each value
# multiplication sum
[2, 31, 5, 622, 7, 3, 45].inject(&:*)
