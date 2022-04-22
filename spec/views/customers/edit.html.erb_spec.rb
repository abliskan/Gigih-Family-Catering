require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      fullname: "MyString",
      email: "MyString",
      phone: "MyString",
      address: "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input[name=?]", "customer[fullname]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[phone]"

      assert_select "input[name=?]", "customer[address]"
    end
  end
end
