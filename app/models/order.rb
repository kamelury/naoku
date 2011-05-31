class Order < ActiveRecord::Base
  
  PAYMENT_TYPES = [
   # Displayed stored in db
   [ "Check" , "check" ],
   [ "Credit card" , "cc" ],
   [ "Purchase order" , "po" ]
  ]
  
  validates_presence_of :name, :email
  validates_format_of   :email,
                        :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message    => 'Email must be valid'
                        
  has_many :line_items
  
  def add_line_items_from_cart(cart)
    cart.items.each do |item|
      li = LineItem.from_cart_item(item)
      line_items << li
    end
  end
   
end
