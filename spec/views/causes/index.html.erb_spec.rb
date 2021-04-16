require 'rails_helper'

RSpec.describe "causes/index", type: :view do
  before(:each) do
    assign(:causes, [
      Cause.create!(
        name: "Name",
        category: "Category"
      ),
      Cause.create!(
        name: "Name",
        category: "Category"
      )
    ])
  end

  it "renders a list of causes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
  end
end
