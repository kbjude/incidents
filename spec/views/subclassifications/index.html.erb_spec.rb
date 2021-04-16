require 'rails_helper'

RSpec.describe "subclassifications/index", type: :view do
  before(:each) do
    assign(:subclassifications, [
      Subclassification.create!(
        classification: nil,
        name: "Name",
        description: "Description"
      ),
      Subclassification.create!(
        classification: nil,
        name: "Name",
        description: "Description"
      )
    ])
  end

  it "renders a list of subclassifications" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
