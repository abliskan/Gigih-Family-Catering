require 'rails_helper'

RSpec.describe "order_details/show", type: :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      order_id: nil,
      menu_id: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
