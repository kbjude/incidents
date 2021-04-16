require 'rails_helper'

RSpec.describe "investigationinjurylocations/new", type: :view do
  before(:each) do
    assign(:investigationinjurylocation, Investigationinjurylocation.new(
      investigation: nil,
      injurylocation: nil
    ))
  end

  it "renders new investigationinjurylocation form" do
    render

    assert_select "form[action=?][method=?]", investigationinjurylocations_path, "post" do

      assert_select "input[name=?]", "investigationinjurylocation[investigation_id]"

      assert_select "input[name=?]", "investigationinjurylocation[injurylocation_id]"
    end
  end
end
