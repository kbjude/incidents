require 'rails_helper'

RSpec.describe "investigationactions/edit", type: :view do
  before(:each) do
    @investigationaction = assign(:investigationaction, Investigationaction.create!(
      investigation: nil,
      action: "MyString",
      resposibility: "MyString"
    ))
  end

  it "renders the edit investigationaction form" do
    render

    assert_select "form[action=?][method=?]", investigationaction_path(@investigationaction), "post" do

      assert_select "input[name=?]", "investigationaction[investigation_id]"

      assert_select "input[name=?]", "investigationaction[action]"

      assert_select "input[name=?]", "investigationaction[resposibility]"
    end
  end
end
