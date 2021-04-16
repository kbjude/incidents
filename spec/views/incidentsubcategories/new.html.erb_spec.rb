require 'rails_helper'

RSpec.describe "incidentsubcategories/new", type: :view do
  before(:each) do
    assign(:incidentsubcategory, Incidentsubcategory.new(
      incidentcategory: nil,
      name: "MyString"
    ))
  end

  it "renders new incidentsubcategory form" do
    render

    assert_select "form[action=?][method=?]", incidentsubcategories_path, "post" do

      assert_select "input[name=?]", "incidentsubcategory[incidentcategory_id]"

      assert_select "input[name=?]", "incidentsubcategory[name]"
    end
  end
end
