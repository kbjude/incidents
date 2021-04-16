require 'rails_helper'

RSpec.describe "workflowtemplates/edit", type: :view do
  before(:each) do
    @workflowtemplate = assign(:workflowtemplate, Workflowtemplate.create!(
      title: "MyString",
      description: "MyString",
      responsible_party: "MyText"
    ))
  end

  it "renders the edit workflowtemplate form" do
    render

    assert_select "form[action=?][method=?]", workflowtemplate_path(@workflowtemplate), "post" do

      assert_select "input[name=?]", "workflowtemplate[title]"

      assert_select "input[name=?]", "workflowtemplate[description]"

      assert_select "textarea[name=?]", "workflowtemplate[responsible_party]"
    end
  end
end
