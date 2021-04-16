require 'rails_helper'

RSpec.describe "classifications/show", type: :view do
  before(:each) do
    @classification = assign(:classification, Classification.create!(
      name: "Name",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
