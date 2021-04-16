require 'rails_helper'

RSpec.describe "investigationclassifications/new", type: :view do
  before(:each) do
    assign(:investigationclassification, Investigationclassification.new(
      investigation: nil,
      subclassification: nil
    ))
  end

  it "renders new investigationclassification form" do
    render

    assert_select "form[action=?][method=?]", investigationclassifications_path, "post" do

      assert_select "input[name=?]", "investigationclassification[investigation_id]"

      assert_select "input[name=?]", "investigationclassification[subclassification_id]"
    end
  end
end
