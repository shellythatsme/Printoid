class Product < ActiveRecord::Base
  belongs_to :category

  validates :productName, :description, :price, presence: true
  validates :productName, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
