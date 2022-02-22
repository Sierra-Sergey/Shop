class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :title, presence: true

  def to_param
    "#{id}-#{title}"
  end
end
