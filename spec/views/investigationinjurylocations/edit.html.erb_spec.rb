require 'rails_helper'

RSpec.describe "investigationinjurylocations/edit", type: :view do
  before(:each) do
    @investigationinjurylocation = assign(:investigationinjurylocation, Investigationinjurylocation.create!(
      investigation: nil,
      injurylocation: nil
    ))
  end

  it "renders the edit investigationinjurylocation form" do
    render

    assert_select "form[action=?][method=?]", investigationinjurylocation_path(@investigationinjurylocation), "post" do

      assert_select "input[name=?]", "investigationinjurylocation[investigation_id]"

      assert_select "input[name=?]", "investigationinjurylocation[injurylocation_id]"
    end
  end
end
