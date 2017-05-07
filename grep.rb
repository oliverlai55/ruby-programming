arr = [1, 3, 2, 12, 1, 2, 31]

arr.grep(1)
# will return all the 1, it will return all matches by default

# When to use Grep instead of select or map
arr = ['hey.rb', 'there.rb', 'index.html']
arr.select{|x| x =~ /\.rb/}.map{|x| x[0...-4]}
# this finds file names with name "rb" and return 3 chars before the file extension.

arr.grep(/(.*)\.rb/){$1}
# finds all the files with end "." and grab the last item
