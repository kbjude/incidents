require 'rails_helper'

RSpec.describe "subclassifications/new", type: :view do
  before(:each) do
    assign(:subclassification, Subclassification.new(
      classification: nil,
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders new subclassification form" do
    render

    assert_select "form[action=?][method=?]", subclassifications_path, "post" do

      assert_select "input[name=?]", "subclassification[classification_id]"

      assert_select "input[name=?]", "subclassification[name]"

      assert_select "input[name=?]", "subclassification[description]"
    end
  end
end
