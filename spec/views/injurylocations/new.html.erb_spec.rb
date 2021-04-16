require 'rails_helper'

RSpec.describe "injurylocations/new", type: :view do
  before(:each) do
    assign(:injurylocation, Injurylocation.new(
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders new injurylocation form" do
    render

    assert_select "form[action=?][method=?]", injurylocations_path, "post" do

      assert_select "input[name=?]", "injurylocation[name]"

      assert_select "input[name=?]", "injurylocation[description]"
    end
  end
end
