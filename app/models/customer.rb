class Customer < ActiveRecord::Base

  belongs_to :province

  validates :firstName, :lastName, :address, presence: true
  validates :email, uniqueness: true
end
