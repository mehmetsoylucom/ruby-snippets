# Methods 2

a = "deneme"

a.upcase   # => "DENEME"
a          # => "deneme" a variable is not effected

a.upcase!  # => "DENEME"
a          # => "DENEME" a variable is effected with "!"

# True or False with ? 

a = "ali"
b = "ali"

a.eql? b  # => true
a.eql?(b) # => true