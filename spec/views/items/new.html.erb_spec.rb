require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :desciption => "MyString",
      :category => "MyString",
      :price => 1.5,
      :quantity => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_desciption[name=?]", "item[desciption]"

      assert_select "input#item_category[name=?]", "item[category]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_quantity[name=?]", "item[quantity]"
    end
  end
end
