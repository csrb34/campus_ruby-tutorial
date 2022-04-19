class Invoice
  # Class method
  def self.print_out
    "Printed out invoice"
  end

  # Instance method
  def convert_to_pdf
    "Converted to PDF"
  end
end

p Invoice.print_out
# p Invoice.convert_to_pdf # Doesnt work, needs and instance
i = Invoice.new
p i.convert_to_pdf
# p i.print_out # Doesnt work

