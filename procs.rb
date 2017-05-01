full_name = Proc.new { !first, last! first + " " + last }
# Sets first and last as variables
full_name["Jordan", "Hudgens"]
full_name.call("Jordan", "Hudgens")

# Diff way to call it, especially in Rails
full_name = Proc.new do !first
  first * 5
end

p full_name("Jordan")
