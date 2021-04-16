require 'rails_helper'

RSpec.describe "workflowtemplates/show", type: :view do
  before(:each) do
    @workflowtemplate = assign(:workflowtemplate, Workflowtemplate.create!(
      title: "Title",
      description: "Description",
      responsible_party: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
  end
end
