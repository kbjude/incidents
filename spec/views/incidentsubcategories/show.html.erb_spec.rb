require 'rails_helper'

RSpec.describe "incidentsubcategories/show", type: :view do
  before(:each) do
    @incidentsubcategory = assign(:incidentsubcategory, Incidentsubcategory.create!(
      incidentcategory: nil,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
