class Order < ActiveRecord::Base
  validates :orderdate, presence: true
end
