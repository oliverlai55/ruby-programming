def baseball_team_list
  puts ["A's", "Angels", "Astros"]
end

# If you want to put a conditional, then you can add 'return'
def second_baseball_team_list
  x = 15
  return ["A's", "Angels", "Astros"] if x == 10
  ["Yankees", "Mets"]
end

# If no return, it may return nil
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
# will return hey there 2
# hash rocket is what returns from a method

# Class vs Instance Method
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

# Using Default argument
def stream_movie title:, lang: "ENG"
  puts title
  puts lang
end

stream_movie title: "The English Patient", lang: "FR"
