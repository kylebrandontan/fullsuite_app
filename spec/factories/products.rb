FactoryBot.define do
  factory :product do
    name { Faker::Device.model_name }
    sku { rand(1000.5000) }
    price { Faker::Commerce.price }
    cost_of_goods { Faker::Commerce.price }
  end
end
