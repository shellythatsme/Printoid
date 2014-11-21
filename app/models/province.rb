# class
class Province < ActiveRecord::Base
  has_many :customers

  validates :GST, :PST, :HST, presence: true
end
