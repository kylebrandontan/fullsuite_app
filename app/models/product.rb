class Product < ApplicationRecord
  validates :name, presence: true
  validates :sku, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :cost_of_goods, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
end
