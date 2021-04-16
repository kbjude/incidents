require 'rails_helper'

RSpec.describe "investigationinjurylocations/index", type: :view do
  before(:each) do
    assign(:investigationinjurylocations, [
      Investigationinjurylocation.create!(
        investigation: nil,
        injurylocation: nil
      ),
      Investigationinjurylocation.create!(
        investigation: nil,
        injurylocation: nil
      )
    ])
  end

  it "renders a list of investigationinjurylocations" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
