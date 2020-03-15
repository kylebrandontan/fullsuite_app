class Stock < ApplicationRecord
  belongs_to :product

  validates :count, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
end
