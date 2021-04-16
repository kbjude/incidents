require 'rails_helper'

RSpec.describe "witnesses/edit", type: :view do
  before(:each) do
    @witness = assign(:witness, Witness.create!(
      incident: nil,
      name: "MyString",
      contact: "MyString",
      remark: "MyText"
    ))
  end

  it "renders the edit witness form" do
    render

    assert_select "form[action=?][method=?]", witness_path(@witness), "post" do

      assert_select "input[name=?]", "witness[incident_id]"

      assert_select "input[name=?]", "witness[name]"

      assert_select "input[name=?]", "witness[contact]"

      assert_select "textarea[name=?]", "witness[remark]"
    end
  end
end
