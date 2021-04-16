require 'rails_helper'

RSpec.describe "classifications/edit", type: :view do
  before(:each) do
    @classification = assign(:classification, Classification.create!(
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit classification form" do
    render

    assert_select "form[action=?][method=?]", classification_path(@classification), "post" do

      assert_select "input[name=?]", "classification[name]"

      assert_select "input[name=?]", "classification[description]"
    end
  end
end
