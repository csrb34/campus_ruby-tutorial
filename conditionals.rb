players = ["Correa", "Jose", "Mario"]

p "-- unless --"
# if !players.empty? # equivalent
unless players.empty? # checks if players is empty
  players.each { |player| puts player }
end

players.each { |player| puts player } unless players.empty?

p "-- compound conditionals --"
x = 10
y = 100
z = 10

if x == y
  if x == z
    puts "equal to everything"
  end
end

if x == y && x == z
  puts "equal to everything"
end

if x == y || x == z
  puts "x not equal to everything"
end

