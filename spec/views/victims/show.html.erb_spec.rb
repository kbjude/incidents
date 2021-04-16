require 'rails_helper'

RSpec.describe "victims/show", type: :view do
  before(:each) do
    @victim = assign(:victim, Victim.create!(
      incident: nil,
      name: "Name",
      contact: "Contact",
      remark: "MyText",
      role: "Role",
      employee: false,
      address: "Address",
      email: "Email",
      supervisor: "Supervisor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Supervisor/)
  end
end
