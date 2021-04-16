require 'rails_helper'

RSpec.describe "action_requireds/new", type: :view do
  before(:each) do
    assign(:action_required, ActionRequired.new(
      name: "MyString",
      phone: "MyString",
      address: "MyString",
      category: "MyString",
      ref_number: "MyString",
      remarks: "MyText"
    ))
  end

  it "renders new action_required form" do
    render

    assert_select "form[action=?][method=?]", action_requireds_path, "post" do

      assert_select "input[name=?]", "action_required[name]"

      assert_select "input[name=?]", "action_required[phone]"

      assert_select "input[name=?]", "action_required[address]"

      assert_select "input[name=?]", "action_required[category]"

      assert_select "input[name=?]", "action_required[ref_number]"

      assert_select "textarea[name=?]", "action_required[remarks]"
    end
  end
end
