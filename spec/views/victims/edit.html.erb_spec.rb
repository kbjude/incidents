require 'rails_helper'

RSpec.describe "victims/edit", type: :view do
  before(:each) do
    @victim = assign(:victim, Victim.create!(
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

  it "renders the edit victim form" do
    render

    assert_select "form[action=?][method=?]", victim_path(@victim), "post" do

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
