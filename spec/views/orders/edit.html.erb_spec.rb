require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      customer_id: nil,
      total_price: "9.99",
      quantity: 1,
      status: "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[customer_id_id]"

      assert_select "input[name=?]", "order[total_price]"

      assert_select "input[name=?]", "order[quantity]"

      assert_select "input[name=?]", "order[status]"
    end
  end
end
