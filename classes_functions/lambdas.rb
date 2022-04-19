full_name = lambda { |first, last| first + " " + last }

name_t_times = ->(first, times) { first * times }

p full_name["Jordan", "Hudgens"]
p full_name.call("Jordan", "Hudgens")

p name_t_times["Carla", 3]
p name_t_times.call("Carla", 2)

# -- Differences between lambda and proc

full_name2 = proc { |first, last| first + " " + last }
p full_name2["Jordan", "David", "Hudgens"]
# p full_name["Jordan", "David", "Hudgens"] # Fails, because it counts arguments
# `block in <main>': wrong number of arguments (given 3, expected 2) (ArgumentError)

def my_method
  x = ->() {return}
  x.call
  p "Text from within the method" # Returns text
end

my_method

def my_method2
  x = Proc.new {return} # Returns null
  x.call
  p "Text from within the method"
end

my_method2
