class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  enum status: %i[opened closed canceled archived]
end
