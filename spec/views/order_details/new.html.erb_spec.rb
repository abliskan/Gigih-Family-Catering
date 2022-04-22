require 'rails_helper'

RSpec.describe "order_details/new", type: :view do
  before(:each) do
    assign(:order_detail, OrderDetail.new(
      order_id: nil,
      menu_id: nil
    ))
  end

  it "renders new order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_details_path, "post" do

      assert_select "input[name=?]", "order_detail[order_id_id]"

      assert_select "input[name=?]", "order_detail[menu_id_id]"
    end
  end
end
