require 'rails_helper'

RSpec.describe "injurytypes/edit", type: :view do
  before(:each) do
    @injurytype = assign(:injurytype, Injurytype.create!(
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit injurytype form" do
    render

    assert_select "form[action=?][method=?]", injurytype_path(@injurytype), "post" do

      assert_select "input[name=?]", "injurytype[name]"

      assert_select "input[name=?]", "injurytype[description]"
    end
  end
end
