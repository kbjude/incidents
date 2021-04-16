require 'rails_helper'

RSpec.describe "incidentsubcategories/index", type: :view do
  before(:each) do
    assign(:incidentsubcategories, [
      Incidentsubcategory.create!(
        incidentcategory: nil,
        name: "Name"
      ),
      Incidentsubcategory.create!(
        incidentcategory: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of incidentsubcategories" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
