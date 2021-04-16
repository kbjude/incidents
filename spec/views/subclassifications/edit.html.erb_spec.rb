require 'rails_helper'

RSpec.describe "subclassifications/edit", type: :view do
  before(:each) do
    @subclassification = assign(:subclassification, Subclassification.create!(
      classification: nil,
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit subclassification form" do
    render

    assert_select "form[action=?][method=?]", subclassification_path(@subclassification), "post" do

      assert_select "input[name=?]", "subclassification[classification_id]"

      assert_select "input[name=?]", "subclassification[name]"

      assert_select "input[name=?]", "subclassification[description]"
    end
  end
end
