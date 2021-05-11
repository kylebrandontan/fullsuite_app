class Discount < ApplicationRecord
  validates :discount, presence: true
  validates :discount_percentage, presence: true, numericality: { only_integer: true }
end
