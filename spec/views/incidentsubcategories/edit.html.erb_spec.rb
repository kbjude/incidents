require 'rails_helper'

RSpec.describe "incidentsubcategories/edit", type: :view do
  before(:each) do
    @incidentsubcategory = assign(:incidentsubcategory, Incidentsubcategory.create!(
      incidentcategory: nil,
      name: "MyString"
    ))
  end

  it "renders the edit incidentsubcategory form" do
    render

    assert_select "form[action=?][method=?]", incidentsubcategory_path(@incidentsubcategory), "post" do

      assert_select "input[name=?]", "incidentsubcategory[incidentcategory_id]"

      assert_select "input[name=?]", "incidentsubcategory[name]"
    end
  end
end
