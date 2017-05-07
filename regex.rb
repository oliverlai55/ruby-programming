string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

p string =~ /quick/

p string =~ /z/ ? "Valid" : "Invalid"

p string =~ /Z/i ? "Valid" : "Invalid"

p string.to_enum(:scan, /\d+/).map { Regex.last_match }

# Email Matcher
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
# looking for all elements BEFORE . or @
# look for letters after . like .com .net
# the i means case insensitive

# diff syntax to pass in argument, do not need parenthesis
def is_valid_email? email
  email =~ VALID_EMAIL_REGEX
end

# Example
p is_valid_email? "jordan@hudgens.com" ? "Valid" : "Invalid"

# IP Address match
# 172.16.0.0 to 172.31.255.255
IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip_address? ip
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip_address?("999.16.0.0") ? "Valid" : "Invalid"

# Use Rubular for Regex testing

# Wheel of fortune guessing game
starting_sentence = "Hi from matching land"
sentence_array = starting_sentence.split("").map(&:downcase)

# take out empty spaces in the array
account_count = sentence_array - [" "]

# gsub = global substitution, great for search strings
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")

while sentence_array.count("") < account_count.count
  puts "Guess a letter:"
  guess = gets.downcase.chomp

# finding values in an array
  if sentence_array.include?(guess)

    # find the position of the array
    letter_index = sentence_array.find_index(guess)

    # when you find the position in the array, set it to empty string
    sentence_array[letter_index] = ""

    final_sentence[letter_index] = guess
    puts "Correct! The sentence is now: #{final_sentence.join}"
  else
    puts "Sorry, the letter isn't the right answer, please try again."
  end
end
