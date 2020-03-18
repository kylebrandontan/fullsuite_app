class Setting < ApplicationRecord
  validates :vat, presence: true
  validates :vat_percentage, presence: true, numericality: { only_integer: true }
  validates :service_charge, presence: true
  validates :service_charge_percentage, presence: true, numericality: { only_integer: true }
end
