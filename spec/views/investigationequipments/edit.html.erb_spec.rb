require 'rails_helper'

RSpec.describe "investigationequipments/edit", type: :view do
  before(:each) do
    @investigationequipment = assign(:investigationequipment, Investigationequipment.create!(
      investigation: nil,
      equipment: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit investigationequipment form" do
    render

    assert_select "form[action=?][method=?]", investigationequipment_path(@investigationequipment), "post" do

      assert_select "input[name=?]", "investigationequipment[investigation_id]"

      assert_select "input[name=?]", "investigationequipment[equipment]"

      assert_select "textarea[name=?]", "investigationequipment[description]"
    end
  end
end
