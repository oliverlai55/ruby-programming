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
