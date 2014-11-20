class Category < ActiveRecord::Base
  has_many :products

  validates :cateroyName, presence: true
end
