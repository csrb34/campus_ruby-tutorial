str = "The quick 12 brown foxes jumped over the 10 lazy dogs"

p str =~ /o/ # returns index of first occurrence (15)
p str =~ /quick/

p str =~ /z/ ? "Valid" : "Invalid"
p str =~ /Z/ ? "Valid" : "Invalid"
p str =~ /Z/i ? "Valid" : "Invalid"

p str.to_enum(:scan, /\d+/).map { Regexp.last_match }

