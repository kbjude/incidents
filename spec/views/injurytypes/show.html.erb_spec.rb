require 'rails_helper'

RSpec.describe "injurytypes/show", type: :view do
  before(:each) do
    @injurytype = assign(:injurytype, Injurytype.create!(
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
