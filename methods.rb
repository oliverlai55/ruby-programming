def baseball_team_list
  puts ["A's", "Angels", "Astros"]
end

# If you want to put a conditional, then you can add 'return'
# The function will return and stop running lines fater return, goes straight to end
def second_baseball_team_list
  x = 15
  return ["A's", "Angels", "Astros"] if x == 10
  ["Yankees", "Mets"]
end

# Calling it
second_baseball_team_list

# If no return, it may return '=> nil'
# if Add return, it will return a variable
def void_method
  puts "hey there"
end

def method_with_return
  return "hey there 2"
end

x = void_method
# won't return anything

y = method_with_return
# Variable is set to return "hey there"
# will return hey there 2
# hash rocket is what returns from a method

# Class vs Instance Method
# Class method can just use dot notation to call method
# Instance method you have to create a new instance first to call it
class Invoice
  # Class method
  def self.print_out
    "Printed out invoices"
  end

  # Instance Mehod
  def convert_to_pdf
    "Converted to PDF"
  end
end

# calling class method
Invoice.print_out

# Instance method callnig by creating new instance
i = Invoice.new
i.convert_to_pdf


def full_name first_name, last_name
  first_name + " " + last_name
end

puts full_name "Jordan", "Hudgens"


# Method argument notes are on top of this directory
