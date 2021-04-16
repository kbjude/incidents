require 'rails_helper'

RSpec.describe "witnesses/show", type: :view do
  before(:each) do
    @witness = assign(:witness, Witness.create!(
      incident: nil,
      name: "Name",
      contact: "Contact",
      remark: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/MyText/)
  end
end
