require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        customer_id: nil,
        total_price: "9.99",
        quantity: 2,
        status: "Status"
      ),
      Order.create!(
        customer_id: nil,
        total_price: "9.99",
        quantity: 2,
        status: "Status"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
