require 'rails_helper'

RSpec.describe "victims/new", type: :view do
  before(:each) do
    assign(:victim, Victim.new(
      incident: nil,
      name: "MyString",
      contact: "MyString",
      remark: "MyText",
      role: "MyString",
      employee: false,
      address: "MyString",
      email: "MyString",
      supervisor: "MyString"
    ))
  end

  it "renders new victim form" do
    render

    assert_select "form[action=?][method=?]", victims_path, "post" do

      assert_select "input[name=?]", "victim[incident_id]"

      assert_select "input[name=?]", "victim[name]"

      assert_select "input[name=?]", "victim[contact]"

      assert_select "textarea[name=?]", "victim[remark]"

      assert_select "input[name=?]", "victim[role]"

      assert_select "input[name=?]", "victim[employee]"

      assert_select "input[name=?]", "victim[address]"

      assert_select "input[name=?]", "victim[email]"

      assert_select "input[name=?]", "victim[supervisor]"
    end
  end
end
