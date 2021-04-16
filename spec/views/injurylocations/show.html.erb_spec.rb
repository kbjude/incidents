require 'rails_helper'

RSpec.describe "injurylocations/show", type: :view do
  before(:each) do
    @injurylocation = assign(:injurylocation, Injurylocation.create!(
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
