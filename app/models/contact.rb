class Contact < ActiveRecord::Base
  validates :title, :content, :phoneNumber, :postalCode, :email, presence: true 
end
