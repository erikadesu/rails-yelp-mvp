class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5, allow_nil: false, only_integer: true }
  validates :restaurant_id, presence: true
  belongs_to :restaurant
end
