require 'rails_helper'

RSpec.describe "investigationclassifications/edit", type: :view do
  before(:each) do
    @investigationclassification = assign(:investigationclassification, Investigationclassification.create!(
      investigation: nil,
      subclassification: nil
    ))
  end

  it "renders the edit investigationclassification form" do
    render

    assert_select "form[action=?][method=?]", investigationclassification_path(@investigationclassification), "post" do

      assert_select "input[name=?]", "investigationclassification[investigation_id]"

      assert_select "input[name=?]", "investigationclassification[subclassification_id]"
    end
  end
end
