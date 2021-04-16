require 'rails_helper'

RSpec.describe "investigations/new", type: :view do
  before(:each) do
    assign(:investigation, Investigation.new(
      incident: nil,
      user: nil,
      report_number: "MyString",
      department: nil,
      status: "MyString",
      reportable_to_legal: false
    ))
  end

  it "renders new investigation form" do
    render

    assert_select "form[action=?][method=?]", investigations_path, "post" do

      assert_select "input[name=?]", "investigation[incident_id]"

      assert_select "input[name=?]", "investigation[user_id]"

      assert_select "input[name=?]", "investigation[report_number]"

      assert_select "input[name=?]", "investigation[department_id]"

      assert_select "input[name=?]", "investigation[status]"

      assert_select "input[name=?]", "investigation[reportable_to_legal]"
    end
  end
end
