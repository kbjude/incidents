require 'rails_helper'

RSpec.describe "action_requireds/edit", type: :view do
  before(:each) do
    @action_required = assign(:action_required, ActionRequired.create!(
      name: "MyString",
      phone: "MyString",
      address: "MyString",
      category: "MyString",
      ref_number: "MyString",
      remarks: "MyText"
    ))
  end

  it "renders the edit action_required form" do
    render

    assert_select "form[action=?][method=?]", action_required_path(@action_required), "post" do

      assert_select "input[name=?]", "action_required[name]"

      assert_select "input[name=?]", "action_required[phone]"

      assert_select "input[name=?]", "action_required[address]"

      assert_select "input[name=?]", "action_required[category]"

      assert_select "input[name=?]", "action_required[ref_number]"

      assert_select "textarea[name=?]", "action_required[remarks]"
    end
  end
end
