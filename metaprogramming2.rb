# The ability to open up class and change the methods in Ruby, give customization and flexbility for other users
class Baseball
end

# p Baseball.new.swing

# You can customize the class at diff points of the codebase
class Baseball
  def swing
    "Homerun"
  end
end

class Baseball
  def swing
    "Strike"
  end
end

p Baseball.new.swing

# Example of metaprogramming
class String
  def censor(bad_word)
    self.gsub! "#{bad_word}", "CENSORED"
  end

  def num_of_chars
    size
  end
end

p "The bunny was in trouble with the king's bunny".censor("bunny")

"The bunny was in trouble with the king's bunny".num_of_chars

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
  end

  def method_missing(method_name, *arguments, &block)
    if method_name.to_s =~ /author_(.*)/
      author.send($1, *arguments, &block)
      # sending the 1st arguent
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('author_') || super
  end
end

author = Author.new
author.first_name = 'Cal'
author.last_name = 'Newport'
author.genre = 'Computer Science'

p author.author_genre
p author.respond_to?(:inspect)
# The issue is that if you ask a boolean to see if method exists, it will say False


class Author
  define_method("some_method") do
    puts "Some details"
  end

  def fiction_details(arg)
    puts "Fiction"
    puts arg
    puts "asdfasdf"
  end

  def coding_details(arg)
    puts "Coding"
    puts arg
    puts "asdfasdf"
  end

  def history_details(arg)
    puts "History"
    puts arg
    puts "asdfasdf"
  end
end


#  MUCH cleaner method
class Author
  genres = %w(fiction coding history)
  # create an array of strings without quotation and commas

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
author.some_method
author.coding_details("Cal Newport")
p author.respond_to?(:coding_details)

# define method creates method at runtime
# method missing doesnt trigger until the whole method has gone through the cycle
