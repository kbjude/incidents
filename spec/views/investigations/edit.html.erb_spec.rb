require 'rails_helper'

RSpec.describe "investigations/edit", type: :view do
  before(:each) do
    @investigation = assign(:investigation, Investigation.create!(
      incident: nil,
      user: nil,
      report_number: "MyString",
      department: nil,
      status: "MyString",
      reportable_to_legal: false
    ))
  end

  it "renders the edit investigation form" do
    render

    assert_select "form[action=?][method=?]", investigation_path(@investigation), "post" do

      assert_select "input[name=?]", "investigation[incident_id]"

      assert_select "input[name=?]", "investigation[user_id]"

      assert_select "input[name=?]", "investigation[report_number]"

      assert_select "input[name=?]", "investigation[department_id]"

      assert_select "input[name=?]", "investigation[status]"

      assert_select "input[name=?]", "investigation[reportable_to_legal]"
    end
  end
end
