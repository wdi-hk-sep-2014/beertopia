require 'rails_helper'

RSpec.describe "items/show", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "Name",
      :desciption => "Desciption",
      :category => "Category",
      :price => 1.5,
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Desciption/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
  end
end
