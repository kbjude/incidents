require 'rails_helper'

RSpec.describe "causes/edit", type: :view do
  before(:each) do
    @cause = assign(:cause, Cause.create!(
      name: "MyString",
      category: "MyString"
    ))
  end

  it "renders the edit cause form" do
    render

    assert_select "form[action=?][method=?]", cause_path(@cause), "post" do

      assert_select "input[name=?]", "cause[name]"

      assert_select "input[name=?]", "cause[category]"
    end
  end
end
