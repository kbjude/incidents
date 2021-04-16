require 'rails_helper'

RSpec.describe "workflowtemplates/index", type: :view do
  before(:each) do
    assign(:workflowtemplates, [
      Workflowtemplate.create!(
        title: "Title",
        description: "Description",
        responsible_party: "MyText"
      ),
      Workflowtemplate.create!(
        title: "Title",
        description: "Description",
        responsible_party: "MyText"
      )
    ])
  end

  it "renders a list of workflowtemplates" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
