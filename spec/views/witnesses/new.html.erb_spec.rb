require 'rails_helper'

RSpec.describe "witnesses/new", type: :view do
  before(:each) do
    assign(:witness, Witness.new(
      incident: nil,
      name: "MyString",
      contact: "MyString",
      remark: "MyText"
    ))
  end

  it "renders new witness form" do
    render

    assert_select "form[action=?][method=?]", witnesses_path, "post" do

      assert_select "input[name=?]", "witness[incident_id]"

      assert_select "input[name=?]", "witness[name]"

      assert_select "input[name=?]", "witness[contact]"

      assert_select "textarea[name=?]", "witness[remark]"
    end
  end
end
