require 'rails_helper'

RSpec.describe "injurylocations/index", type: :view do
  before(:each) do
    assign(:injurylocations, [
      Injurylocation.create!(
        name: "Name",
        description: "Description"
      ),
      Injurylocation.create!(
        name: "Name",
        description: "Description"
      )
    ])
  end

  it "renders a list of injurylocations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
