# -----------
# -- while --
# -----------
i = 0

while i < 10
  puts "hey there #{i}"
  i += 1
end

# ----------
# -- each --
# ----------
arr = [23, 2343, 545, 123, 34567, 1232]

arr.each do |i|
  p i
end

arr.each { |i| p i }

# for
for i in 0..42
  p i if i % 2 == 0 and i % 7 == 0
end

# -----------------------
# -- nested iterations --
# -----------------------
teams = {
  "Houston Astros" => {
    "first base" => "Christ Carter",
    "second base" => "Jose Altuve",
    "shortstop" => "Carlos Correa"
  },
  "Texas Rangers" => {
    "first base" => "Prince Fielder",
    "second base" => "R. Odor",
    "shortstop" => "Elvis Andrus"
  }
}

teams.each do |team, players| # |key, value|
  puts team
  players.each do |position, player|
    p "#{player} starts at #{position}"
  end
end

# -------------------
# -- select method --
# -------------------
p (1..10).to_a.select do |x|
  x.even?
end
p (1..10).to_a.select { |x| x.even? }
p (1..10).to_a.select(&:even?)

str_arr = %w(The quick brown fox jumped over the laziest dog)
p str_arr.size
p str_arr.select { |word| word.length > 5 }

p %w(a b c d e f g h i).select { |v| v =~ /[aeiou]/ } # =~ -> regular expression selector

# ---------
# -- map --
# ---------
str_arr2 = ["1","23.0"]






# -----------
# -- while --
# -----------
i = 0

while i < 10
  puts "hey there #{i}"
  i += 1
end

# ----------
# -- each --
# ----------
arr = [23, 2343, 545, 123, 34567, 1232]

arr.each do |i|
  p i
end

arr.each { |i| p i }

# for
for i in 0..42
  p i if i % 2 == 0 and i % 7 == 0
end

# -----------------------
# -- nested iterations --
# -----------------------
teams = {
  "Houston Astros" => {
    "first base" => "Christ Carter",
    "second base" => "Jose Altuve",
    "shortstop" => "Carlos Correa"
  },
  "Texas Rangers" => {
    "first base" => "Prince Fielder",
    "second base" => "R. Odor",
    "shortstop" => "Elvis Andrus"
  }
}

teams.each do |team, players| # |key, value|
  puts team
  players.each do |position, player|
    p "#{player} starts at #{position}"
  end
end

# -------------------
# -- select method --
# -------------------
p (1..10).to_a.select do |x|
  x.even?
end
p (1..10).to_a.select { |x| x.even? }
p (1..10).to_a.select(&:even?)

str_arr = %w(The quick brown fox jumped over the laziest dog)
p str_arr.size
p str_arr.select { |word| word.length > 5 }

p %w(a b c d e f g h i).select { |v| v =~ /[aeiou]/ } # =~ -> regular expression selector

# ---------
# -- map --
# ---------
p ["1","23.0", "0", "4"].map { |x| x.to_i }
p ["1","23.0", "0", "4"].map(&:to_i)
p ("a".."g").to_a.map {|i| i * 2}
p Hash[[1, 2.1, 3.33, 0.9].map { |x| [x, x.to_i] }]
p Hash[[1, 2.1, 3.33, 0.9].map { |x| [x.to_i, x] }]

p Hash[%w(A dynamic open source programming language).map { |x| [x, x.length]} ]
b = {:a => "foo", :b => "bar"}.map{ |a, b| "#{a}=#{b}"}.join('&')
p b

{ a: 'foo', b: 'bar' }.map { |a, b| "#{a}=#{b}"}.join('&')

# ------------
# -- inject --
# ------------
total = 0
[3, 2, 5, 667, 9887, 22, 274, 5534, 2, 4, 234, 34, 2].each do |i|
  total += i
end
puts total

p [3, 2, 5, 667, 9887, 22, 274, 5534, 2, 4, 234, 34, 2].inject(&:+) # '+' is actually a method, not an operator
p [3, 2, 5, 667, 9887, 22, 274, 5534, 2, 4, 234, 34, 2].inject(&:*)






