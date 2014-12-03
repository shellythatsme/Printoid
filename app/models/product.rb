# fyguhijkl
class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, :description, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  mount_uploader :picture, ImageUploader
  paginates_per 5

  filterrific(
  default_settings: { sorted_by: 'created_at_desc' },
  filter_names: [
    :search_query,
    :sorted_by,
    :with_category_id
  ]
  )

end
