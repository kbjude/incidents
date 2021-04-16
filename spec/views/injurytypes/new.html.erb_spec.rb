require 'rails_helper'

RSpec.describe "injurytypes/new", type: :view do
  before(:each) do
    assign(:injurytype, Injurytype.new(
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders new injurytype form" do
    render

    assert_select "form[action=?][method=?]", injurytypes_path, "post" do

      assert_select "input[name=?]", "injurytype[name]"

      assert_select "input[name=?]", "injurytype[description]"
    end
  end
end
