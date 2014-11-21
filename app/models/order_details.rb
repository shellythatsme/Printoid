class OrderDetails < ActiveRecord::Base
  validates  :price, :quantity, presence: true
end
