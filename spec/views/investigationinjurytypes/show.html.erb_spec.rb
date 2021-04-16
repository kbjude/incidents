require 'rails_helper'

RSpec.describe "investigationinjurytypes/show", type: :view do
  before(:each) do
    @investigationinjurytype = assign(:investigationinjurytype, Investigationinjurytype.create!(
      investigation: nil,
      injurytype: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
