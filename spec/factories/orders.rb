FactoryBot.define do
  factory :order do
    customer_id { nil }
    order_date { "2022-04-22 15:21:47" }
    total_price { "9.99" }
    quantity { 1 }
    status { "MyString" }
  end
end
