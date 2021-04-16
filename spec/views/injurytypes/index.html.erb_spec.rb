require 'rails_helper'

RSpec.describe "injurytypes/index", type: :view do
  before(:each) do
    assign(:injurytypes, [
      Injurytype.create!(
        name: "Name",
        description: "Description"
      ),
      Injurytype.create!(
        name: "Name",
        description: "Description"
      )
    ])
  end

  it "renders a list of injurytypes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
