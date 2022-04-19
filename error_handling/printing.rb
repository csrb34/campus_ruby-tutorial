def error_logger(err)
  File.open('error_handling/error_log.txt', 'a') do |file|
    file.puts err
  end
end

begin
  # puts nil * 5
  puts 8/0
rescue StandardError => e
  error_logger("Error: #{e} at #{Time.now}")
end
