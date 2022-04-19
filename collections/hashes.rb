positions = { first_base: "Chris", second_base: "Jose", short_stop: "Carlos"}
positions_old_syntax = { "first_base" => "Chris", "second_base"=> "Jose", "short_stop" => "Carlos"}
positions_with_symbols = { :first_base => "Chris", :second_base=> "Jose", :short_stop => "Carlos"}

p positions[:second_base]

people = { jordan: 32, tiffany: 16, steven: 10, heather: 29 }
p people
p people[:jordan]
p people.delete(:heather)
p people

people.each_key { |key| puts key }
people.each_value { |val| puts val }



people[:leann] = 42
p people
people_2 = people.invert # reverse key and value
p people_2
p people.merge(people_2)


p people.to_a # to array
p people.keys
p people.values
