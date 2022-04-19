x = [2, 4, 6]
y = Array.new
y[0] = 45
y[4] = 10 # add null elements up to position 4
p y
y.each do |i| # iterates through null values too
  puts i
end


puts "--- delete ---"
# delete
x = ["asdf", 3, 4, 12345, "b", true, 23, 4, 56, 45]
p x.length
p x.delete(4) # deletes both 4s
p x.length
p x.delete_at(2) # returns removed value
p x.length
p x


batting_average = [0.300, 0.180, 0.220, 0.250]
p batting_average
batting_average.delete_if { |average| average < 0.24 }
p batting_average

puts "--- join, push, pop ---"
teams = ["astros", "rangers", "mets"]
p teams.join(',')
teams.push("marlins")
teams.push("red sox", "blue jays")
p teams
z = teams.pop
p z





