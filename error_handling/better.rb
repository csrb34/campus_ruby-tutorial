begin
  # puts 8/0
  puts nil + 5
# rescue ZeroDivisionError => e
rescue StandardError => e
  puts "Error occurred: #{e}"
end
