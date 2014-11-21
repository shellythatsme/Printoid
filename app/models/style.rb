class Style < ActiveRecord::Base
  validates :colour, presence: true
end
