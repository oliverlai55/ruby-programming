def full_name(first_name, last_name)
  first_name + " " + last_name
end

puts full_name("Oliver", "Lai")

# OR

def full_name first_name, last_name
  first_name + " " + last_name
end

puts full_name "Oliver", "Lai"

# Named Arguments
def print_address city:, state:, zip:
  puts city
  puts state
  puts zip
end

print_address city: "New York", state: "NY", zip: "10001"


# Nameed Arguments has an advantage that the order of arguents in which you pass in
# the method does not matter. Less chance of bugs, makes arguments much more explicit
def sms_generator api_key:, num:, msg:, locale:
end

sms_generator num: 1234, api_key: '23423', locale: 'US', msg: 'hi'


# Default argument
# Adding default argument in case its very common to have it
def stream_movie title:, lang: "ENG"
  puts title
  puts lang
end

stream_movie title: "The English Patient", lang: "FR"
