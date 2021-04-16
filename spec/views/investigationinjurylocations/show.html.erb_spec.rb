require 'rails_helper'

RSpec.describe "investigationinjurylocations/show", type: :view do
  before(:each) do
    @investigationinjurylocation = assign(:investigationinjurylocation, Investigationinjurylocation.create!(
      investigation: nil,
      injurylocation: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
