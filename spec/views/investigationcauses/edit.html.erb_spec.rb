require 'rails_helper'

RSpec.describe "investigationcauses/edit", type: :view do
  before(:each) do
    @investigationcause = assign(:investigationcause, Investigationcause.create!(
      investigation: nil,
      cause: nil
    ))
  end

  it "renders the edit investigationcause form" do
    render

    assert_select "form[action=?][method=?]", investigationcause_path(@investigationcause), "post" do

      assert_select "input[name=?]", "investigationcause[investigation_id]"

      assert_select "input[name=?]", "investigationcause[cause_id]"
    end
  end
end
