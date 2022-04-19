# using this code blocks is bad practice, better to avoid reaching this situation with previous validations etc..
begin
  puts 8/0
rescue
  puts "Rescued the error"
end
