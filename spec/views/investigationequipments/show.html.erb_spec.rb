require 'rails_helper'

RSpec.describe "investigationequipments/show", type: :view do
  before(:each) do
    @investigationequipment = assign(:investigationequipment, Investigationequipment.create!(
      investigation: nil,
      equipment: "Equipment",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Equipment/)
    expect(rendered).to match(/MyText/)
  end
end
