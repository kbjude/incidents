require 'rails_helper'

RSpec.describe "investigationinjurytypes/new", type: :view do
  before(:each) do
    assign(:investigationinjurytype, Investigationinjurytype.new(
      investigation: nil,
      injurytype: nil
    ))
  end

  it "renders new investigationinjurytype form" do
    render

    assert_select "form[action=?][method=?]", investigationinjurytypes_path, "post" do

      assert_select "input[name=?]", "investigationinjurytype[investigation_id]"

      assert_select "input[name=?]", "investigationinjurytype[injurytype_id]"
    end
  end
end
