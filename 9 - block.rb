# Block

family_members = ["Yeşim", "Ezel", "Uğur", "Ömer"]

# multirow block

family_members.each do |member_name|
  puts member_name
end

# short block

family_members.each { |member_name| puts member_name }