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

variableInVariable = "Manupulated variable in quotes (#{__LINE__}):\n#{variableNumericName*2} #{variableStringName} "
puts variableInVariable

input = gets.chomp

# Global & local variable

puts "Global variable value (#{__LINE__}):"
$globalVariable = "Mehmet"
puts "#{$globalVariable}"

input = gets.chomp

def say_hi
    localVariable = "I am the localVariable of say_hi"
    puts "Global variable concated in def (#{__LINE__}):\nMerhaba #{$globalVariable} ( from say_hi output )\n\n"
    input = gets.chomp
    puts "Local variable value (#{__LINE__}):\n#{localVariable}"
end

input.chomp

say_hi

input = gets.chomp

# Constants

MyConstant = 10

puts "MyConstant value is (#{__LINE__}):\n#{MyConstant}" 

input = gets.chomp

# Check the variable type before put or print 

puts "Variable type for constant (#{__LINE__}): ", defined?(MyConstant) # contant

input = gets.chomp

puts "Variable type for local variable (#{__LINE__}): ", defined?(variableStringName) # local-variable

input = gets.chomp

puts "Variable type for method (#{__LINE__}): ", defined?(say_hi) # method
