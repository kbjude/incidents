require 'rails_helper'

RSpec.describe "investigationinjurytypes/index", type: :view do
  before(:each) do
    assign(:investigationinjurytypes, [
      Investigationinjurytype.create!(
        investigation: nil,
        injurytype: nil
      ),
      Investigationinjurytype.create!(
        investigation: nil,
        injurytype: nil
      )
    ])
  end

  it "renders a list of investigationinjurytypes" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
