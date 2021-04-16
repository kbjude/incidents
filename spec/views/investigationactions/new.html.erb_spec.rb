require 'rails_helper'

RSpec.describe "investigationactions/new", type: :view do
  before(:each) do
    assign(:investigationaction, Investigationaction.new(
      investigation: nil,
      action: "MyString",
      resposibility: "MyString"
    ))
  end

  it "renders new investigationaction form" do
    render

    assert_select "form[action=?][method=?]", investigationactions_path, "post" do

      assert_select "input[name=?]", "investigationaction[investigation_id]"

      assert_select "input[name=?]", "investigationaction[action]"

      assert_select "input[name=?]", "investigationaction[resposibility]"
    end
  end
end
