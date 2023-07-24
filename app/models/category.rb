class Category < ApplicationRecord

  # VALIDATIONS
  validates :name, presence: true
end
