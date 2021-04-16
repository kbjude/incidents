require 'rails_helper'

RSpec.describe "investigationcauses/new", type: :view do
  before(:each) do
    assign(:investigationcause, Investigationcause.new(
      investigation: nil,
      cause: nil
    ))
  end

  it "renders new investigationcause form" do
    render

    assert_select "form[action=?][method=?]", investigationcauses_path, "post" do

      assert_select "input[name=?]", "investigationcause[investigation_id]"

      assert_select "input[name=?]", "investigationcause[cause_id]"
    end
  end
end
