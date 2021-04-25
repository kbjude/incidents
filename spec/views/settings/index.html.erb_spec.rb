require 'rails_helper'

RSpec.describe "settings/index", type: :view do
  before(:each) do
    assign(:settings, [
      Setting.create!(
        key: "Key",
        value: "Value"
      ),
      Setting.create!(
        key: "Key",
        value: "Value"
      )
    ])
  end

  it "renders a list of settings" do
    render
    assert_select "tr>td", text: "Key".to_s, count: 2
    assert_select "tr>td", text: "Value".to_s, count: 2
  end
end
