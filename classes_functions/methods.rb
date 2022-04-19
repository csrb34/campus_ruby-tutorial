def full_name first_name, last_name
# def full_name(first_name, last_name)
  # first_name + " " + last_name
  "#{first_name} #{last_name}"
end

puts full_name("Jordan", "Hudgens")
puts full_name "Jordan", "Hudgens"

# Named arguments
def print_address city:, state:, zip:
  puts city
  puts state
  puts zip
end

print_address city:"Colindres", state:"Cantabria", zip: 39750
# The order doesn't matter and clarify how to use method

# def sms_generator api_key, num, msg, locale
#   # contents
# end
#
# sms_generator "98723how", 55555555, 'hey there', 'US'


# Default arguments
def stream_movie title:, lang: "ENG"
  puts title
  puts lang
end

stream_movie title:"The english patient"
stream_movie title:"The english patient", lang:"ESP"


# Name and optional arguments

def registration(email:, password:, **kwargs)
  puts "Building account for: #{email}"

  if kwargs[:role]
    puts "With role: #{kwargs[:role]}"
  end

  if kwargs[:plan]
    puts "With plan: #{kwargs[:plan]}"
  end
end

registration(
  email: "jordan@example.com",
  password: "123password"
)

registration(
  email: "admin@example.com",
  password: "123adminpassword",
  role: "admin"
)

registration(
  email: "jordan@example.com",
  password: "123password",
  role: "user",
  plan: "super deluxe"
)
