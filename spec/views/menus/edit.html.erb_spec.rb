require 'rails_helper'

RSpec.describe "menus/edit", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(
      title: "MyString",
      price: "9.99",
      image: "MyString"
    ))
  end

  it "renders the edit menu form" do
    render

    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do

      assert_select "input[name=?]", "menu[title]"

      assert_select "input[name=?]", "menu[price]"

      assert_select "input[name=?]", "menu[image]"
    end
  end
end
