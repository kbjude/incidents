require 'rails_helper'

RSpec.describe "investigationequipments/new", type: :view do
  before(:each) do
    assign(:investigationequipment, Investigationequipment.new(
      investigation: nil,
      equipment: "MyString",
      description: "MyText"
    ))
  end

  it "renders new investigationequipment form" do
    render

    assert_select "form[action=?][method=?]", investigationequipments_path, "post" do

      assert_select "input[name=?]", "investigationequipment[investigation_id]"

      assert_select "input[name=?]", "investigationequipment[equipment]"

      assert_select "textarea[name=?]", "investigationequipment[description]"
    end
  end
end
