FactoryBot.define do
  factory :setting do
    vat { false }
    vat_percentage { "9.99" }
    service_charge { false }
    service_charge_percentage { "9.99" }
  end
end
