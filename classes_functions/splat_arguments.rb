def customer_assignments_v1 customer_1, customer_2, customer_3
  "Assigning customers: #{customer_1}, #{customer_2}, #{customer_3}"
end

def customer_assignments *customers
  # "Assigning customers: #{customers}"

  # "Assigning customers: #{customers.upcase}" # Fails
  # undefined method `upcase' for ["Apple", "Google", "Facebook"]:Array (NoMethodError)

  customers.each do |customer|
    puts customer.upcase
  end
end

p customer_assignments(
  "Apple",
  "Google",
  "Facebook"
)

