class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian french belgian japanese), allow_nil: false}, presence: true
  has_many :reviews, dependent: :destroy
end
