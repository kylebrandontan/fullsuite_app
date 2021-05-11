FactoryBot.define do
  factory :stock do
    count { 1 }
    product { Product.first || association(:product) }
  end
end
