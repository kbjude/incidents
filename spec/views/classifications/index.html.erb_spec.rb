require 'rails_helper'

RSpec.describe "classifications/index", type: :view do
  before(:each) do
    assign(:classifications, [
      Classification.create!(
        name: "Name",
        description: "Description"
      ),
      Classification.create!(
        name: "Name",
        description: "Description"
      )
    ])
  end

  it "renders a list of classifications" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
