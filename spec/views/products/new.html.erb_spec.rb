require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name_product: "MyString",
      quantity: "9.99"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name_product]"

      assert_select "input[name=?]", "product[quantity]"
    end
  end
end
