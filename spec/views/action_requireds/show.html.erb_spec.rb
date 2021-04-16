require 'rails_helper'

RSpec.describe "action_requireds/show", type: :view do
  before(:each) do
    @action_required = assign(:action_required, ActionRequired.create!(
      name: "Name",
      phone: "Phone",
      address: "Address",
      category: "Category",
      ref_number: "Ref Number",
      remarks: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Ref Number/)
    expect(rendered).to match(/MyText/)
  end
end
