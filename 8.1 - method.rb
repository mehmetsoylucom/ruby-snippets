# Methods

# Return priority

def merhaba
    "Merhaba" # to return
end

def merhabaBir
  m = "Merhaba"
  n = "Ornek" # to return
end

def merhabaIki
  m = "Merhaba"
  return "Return Ornek" # to return
  n = "Ornek"
end

puts merhabaBir   # Sonuç : Ornek
puts merhabaIki   # Sonuç : Return Ornek

# Kill def

undef merhaba

# Arguments

def merhaba(isim)
  "Merhaba #{isim}"
end

def merhaba isim
  "Merhaba #{isim}"
end

def merhaba(isim="insalık!")
  "Merhaba #{isim}"
end

def merhaba(*isimler)
  "Merhaba #{isimler.join(" ve ")}"
end

def custom_numbers(first, second, *others)
  puts "ilk sayı: #{first}"
  puts "ikinci sayı : #{second}"
  puts "diğer sayılar : #{others.join(",")}"
end
