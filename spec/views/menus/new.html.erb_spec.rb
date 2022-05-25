require 'rails_helper'

RSpec.describe "menus/new", type: :view do
  before(:each) do
    assign(:menu, Menu.new(
      title: "MyString",
      price: "9.99",
      image: "MyString"
    ))
  end

  it "renders new menu form" do
    render

    assert_select "form[action=?][method=?]", menus_path, "post" do

      assert_select "input[name=?]", "menu[title]"

      assert_select "input[name=?]", "menu[price]"

      assert_select "input[name=?]", "menu[image]"
    end
  end
end
