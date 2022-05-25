require 'rails_helper'

RSpec.describe "menus/index", type: :view do
  before(:each) do
    assign(:menus, [
      Menu.create!(
        title: "Title",
        price: "9.99",
        image: "Image"
      ),
      Menu.create!(
        title: "Title",
        price: "9.99",
        image: "Image"
      )
    ])
  end

  it "renders a list of menus" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
