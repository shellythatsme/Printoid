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
    :with_category_id
  ]
  )

  scope :search_query, lambda { |query|
    return nil  if query.blank?
    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)
    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conditions = 2
    where(
      terms.map {
        or_clauses = [
          "LOWER(products.name) LIKE ?",
          "LOWER(products.description) LIKE ?"
        ].join(' OR ')
        "(#{ or_clauses })"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conditions }.flatten
    )
  }

  scope :with_category_id, lambda { |category_id| 
    where(category_id: [*category_ids])
  }

end
