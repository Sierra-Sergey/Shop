class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items

  scope :price_range, -> (min, max) { where('price >= ? AND price <= ?', min, max) }

  def self.search(term)
    where("title ILIKE ?", "%#{term}%")
  end
end
