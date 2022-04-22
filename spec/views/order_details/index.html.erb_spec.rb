require 'rails_helper'

RSpec.describe "order_details/index", type: :view do
  before(:each) do
    assign(:order_details, [
      OrderDetail.create!(
        order_id: nil,
        menu_id: nil
      ),
      OrderDetail.create!(
        order_id: nil,
        menu_id: nil
      )
    ])
  end

  it "renders a list of order_details" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
