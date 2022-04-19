full_name = Proc.new { |first, last| first + " " + last }
p full_name["Jordan", "Hudgens"]
p full_name.call("Jordan", "Hudgens")

name_five_times = Proc.new do |first, last|
  first * 5
end
p name_five_times["Jordan"]


