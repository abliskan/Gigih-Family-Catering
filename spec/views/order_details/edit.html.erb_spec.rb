require 'rails_helper'

RSpec.describe "order_details/edit", type: :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      order_id: nil,
      menu_id: nil
    ))
  end

  it "renders the edit order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_detail_path(@order_detail), "post" do

      assert_select "input[name=?]", "order_detail[order_id_id]"

      assert_select "input[name=?]", "order_detail[menu_id_id]"
    end
  end
end
