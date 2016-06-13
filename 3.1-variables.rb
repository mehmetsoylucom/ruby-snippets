# Numeric variable

variableNumericName = 5
puts "Numeric variable (#{__LINE__}): " ,  variableNumericName

input = gets.chomp

# String variable

variableStringName = "Adet"
puts "string variable (#{__LINE__}): " , variableStringName

input = gets.chomp

# Concat variables

variableInVariable = "#{variableNumericName} #{variableStringName} "
puts "Concat variables (#{__LINE__}):\n",  variableInVariable

input = gets.chomp

# Manipulate vars in quote 

variableInVariable = "Manupulated variable in quotes (#{__LINE__}) :\n#{variableNumericName*2} #{variableStringName} "
puts variableInVariable

input = gets.chomp

# Global & local variable

puts "Global variable value (#{__LINE__}):"
$globalVariable = "Mehmet"
puts "#{$globalVariable}"

input = gets.chomp

def say_hi
    localVariable = "I am the localVariable of say_hi"
    puts "Global variable concated in def :\nMerhaba #{$globalVariable} ( from say_hi output )\n\n"
    puts "Local variable value (#{__LINE__}):\n#{localVariable}"
end

input.chomp

say_hi

input = gets.chomp

# Constants

MyConstant = 10

puts "MyConstant value is :\n#{MyConstant}" 

input = gets.chomp

# Check the variable type before put or print 

puts "Variable type for constant : ", defined?(MyConstant) # contant

input = gets.chomp

puts "Variable type for local variable : ", defined?(variableStringName) # local-variable

input = gets.chomp

puts "Variable type for method : ", defined?(say_hi) # method
