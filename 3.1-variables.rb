# Numeric variable

variableNumericName = 5
puts "numeric variable : " ,  variableNumericName

input = gets.chomp

# String variable

variableStringName = "Adet"
puts "string variable : " , variableStringName

input = gets.chomp

# Concat variables

variableInVariable = "#{variableNumericName} #{variableStringName} "
puts "Concat variables : ",  variableInVariable

input = gets.chomp

# Manipulate vars in quote 

variableInVariable = "#{variableNumericName*2} #{variableStringName} "
puts variableInVariable

input = gets.chomp

# Global & local variable

$globalVariable = "Mehmet"
puts "Merhaba #{$globalVariable}"

def say_hi
    localVariable = 'I am the localVariable of say_hi'
    puts "Merhaba #{$globalVariable} ( say_hi output )"
    puts "#{localVariable}"
end

say_hi

input = gets.chomp

# Constants

MyConstant = 10

puts "MyConstant value is : #{MyConstant}" 


input = gets.chomp

# Check the variable type before put or print 

puts "Variable type for constant : ", defined?(MyConstant) # contant

puts "Variable type for local variable : ", defined?(variableStringName) # local-variable

puts "Variable type for method : ", defined?(say_hi) # method
