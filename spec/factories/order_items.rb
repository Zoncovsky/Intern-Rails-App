FactoryBot.define do
  factory :order_item do
    quantity { 1 }
    total { "9.99" }
    unit_price { "9.99" }
    menu_id { 1 }
    order_id { 1 }
  end
end
