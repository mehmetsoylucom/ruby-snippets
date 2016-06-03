# Ternary

p 4 < 3 ? '4 smaller 3' : '4 greater 3'

p "answered to the to_s" if 4.respond_to?('to_s') # without else block

p  4.respond_to?('to_s') && "answered to the to_s" # without else block

# Unary

a = 10

# Each row change the a value

p 'a +=2 ' , a +=2

p 'a -=2 ' , a -=2

p 'a *=2' , a *=2

p 'a **=2' , a **=2

p 'a /=2' , a /=2
 