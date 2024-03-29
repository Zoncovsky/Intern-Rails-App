require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        name_product: "Name Product",
        quantity: "9.99"
      ),
      Product.create!(
        name_product: "Name Product",
        quantity: "9.99"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Name Product".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
