class Product < ApplicationRecord
  belongs_to :category

  def self.search(term)
    where("title ILIKE ?", "%#{term}%")
  end
end
