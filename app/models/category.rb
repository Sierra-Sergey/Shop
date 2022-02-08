class Category < ApplicationRecord
  has_many :products
  validates :title, presence: true

  def to_param
    "#{id}-#{title}"
  end
end
