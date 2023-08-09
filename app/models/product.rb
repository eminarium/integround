class Product < ApplicationRecord

  # VALIDATIONS
  validates :name, presence: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :category_id, presence: true

  # ASSOCIATIONS
  belongs_to :category
end
