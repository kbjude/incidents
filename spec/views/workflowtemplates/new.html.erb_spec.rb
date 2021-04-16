require 'rails_helper'

RSpec.describe "workflowtemplates/new", type: :view do
  before(:each) do
    assign(:workflowtemplate, Workflowtemplate.new(
      title: "MyString",
      description: "MyString",
      responsible_party: "MyText"
    ))
  end

  it "renders new workflowtemplate form" do
    render

    assert_select "form[action=?][method=?]", workflowtemplates_path, "post" do

      assert_select "input[name=?]", "workflowtemplate[title]"

      assert_select "input[name=?]", "workflowtemplate[description]"

      assert_select "textarea[name=?]", "workflowtemplate[responsible_party]"
    end
  end
end
