require 'rails_helper'

RSpec.describe "subclassifications/show", type: :view do
  before(:each) do
    @subclassification = assign(:subclassification, Subclassification.create!(
      classification: nil,
      name: "Name",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
