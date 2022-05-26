class Restaurant < ApplicationRecord
  category_types = %w[chinese italian japanese french belgian]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: category_types, message: "%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end
