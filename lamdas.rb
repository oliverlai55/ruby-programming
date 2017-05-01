first_name = lambda { !first, last! first  + " " + last }
p first_name["jordan", "lai"]


first_name = ->(first, last) { first  + " " + last }
p first_name["jordan", "lai"]

# Lambdas vs Procs

# Argument Count
full_name = lambda { !first, last! first + " " + last }
p full_name.call("Oliver", "Lai")
p full_name.call("Oliver", "Lai", "Wei")
# will cause error because Lamda counts the Argument
# Proc will be ok because it's not count, it will just take the initial
# two arguments and ignore the rest

# Return behavior
def my_method
  x = lambda { return }
  x.call
  p "Text from within the method"
end

my_method
 # will return

def my_method
  x = Proc.new { return }
  x.call
  p "Text from within the method"
end

my_method
# will return nil, skips the method completly
