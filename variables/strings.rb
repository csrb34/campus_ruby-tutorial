
n = 23
s = "I'm #{n} years Old"

p s
p s.downcase
p s.upcase
p s.swapcase
p s.reverse.upcase

milk = "milk".upcase
m = milk.downcase! # yields errors
p milk
p m

str = "The quick brown fox jumped over the quick dog"

p str.sub "quick", "slow"
p str.gsub "quick", "slow"
# p str.gsub! "quick", "slow" # '!' modifies the original str value
p str
