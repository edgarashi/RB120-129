# Alan created the following code to keep track of items for a
# shopping cart application he's writing:
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end
# Alyssa looked at the code and spotted a mistake.
# "This will fail when update_quantity is called", she says.

# Can you spot the mistake and how to address it?
# On line 4 Alan has used an attr_reader, as opposed to an
# attr_writer, or attr_accessor. This means on line 13, when 'quantity'
# w/o an '@' is called, the quantity instance variable is unable to
# be updated because there is no setter method present.