# Don't use this syntax
begin
  puts 8/0
rescue
  "Rescued the error"
end

# Now we have a more detailed way of error handling
begin
  puts 8/0
rescue ZeroDivisionError => e
  puts "Error occured: #{e}"
end

# Check the diff between StandardError and ZeroDivisionError??

# Custom Error Handling
def error_logger(e)
  File.open('error-handling-lessons/error_log.txt', 'a') do |file|
    file.puts e
  end
end

begin
  puts nil + 10
rescue StandardError => e
  error_logger("Error: #{e} at #{Time.now}")
end
