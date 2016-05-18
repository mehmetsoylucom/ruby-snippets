# Variables 1

variableNumericName = 5
puts variableNumericName

variableStringName = "Adet"
puts variableStringName

variableInVariable = "#{variableNumericName} #{variableStringName} "
puts variableInVariable

variableInVariable = "#{variableNumericName*2} #{variableStringName} "
puts variableInVariable


# Global & local variable

$globalVariable = "Mehmet"
puts "Merhaba #{$globalVariable}"

def say_hi
    localVariable = 'I am the localVariable of say_hi'
    puts "Merhaba #{$globalVariable} ( say_hi output )"
    puts "#{localVariable}"
end

say_hi


# CONSTANTS

MyConstant = 10

puts "MyConstant value is : #{MyConstant}" 

# Check the variable type before put or print 

puts defined?(MyConstant) # contant
puts defined?(variableStringName) # local-variable
puts defined?(say_hi) # method