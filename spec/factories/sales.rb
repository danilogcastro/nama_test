FactoryBot.define do
  factory :sale do
    description {"Some descriptiom"}
    unit_price {10.5}
    quantity { 3 }
    association :buyer
    association :supplier
  end
end