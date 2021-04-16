require 'rails_helper'

RSpec.describe "causes/new", type: :view do
  before(:each) do
    assign(:cause, Cause.new(
      name: "MyString",
      category: "MyString"
    ))
  end

  it "renders new cause form" do
    render

    assert_select "form[action=?][method=?]", causes_path, "post" do

      assert_select "input[name=?]", "cause[name]"

      assert_select "input[name=?]", "cause[category]"
    end
  end
end
