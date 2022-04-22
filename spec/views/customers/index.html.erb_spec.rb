require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        fullname: "Fullname",
        email: "Email",
        phone: "Phone",
        address: "Address"
      ),
      Customer.create!(
        fullname: "Fullname",
        email: "Email",
        phone: "Phone",
        address: "Address"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", text: "Fullname".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
  end
end