require 'rails_helper'

RSpec.describe "injurylocations/edit", type: :view do
  before(:each) do
    @injurylocation = assign(:injurylocation, Injurylocation.create!(
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit injurylocation form" do
    render

    assert_select "form[action=?][method=?]", injurylocation_path(@injurylocation), "post" do

      assert_select "input[name=?]", "injurylocation[name]"

      assert_select "input[name=?]", "injurylocation[description]"
    end
  end
end
