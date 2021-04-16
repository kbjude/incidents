require 'rails_helper'

RSpec.describe "investigationinjurytypes/edit", type: :view do
  before(:each) do
    @investigationinjurytype = assign(:investigationinjurytype, Investigationinjurytype.create!(
      investigation: nil,
      injurytype: nil
    ))
  end

  it "renders the edit investigationinjurytype form" do
    render

    assert_select "form[action=?][method=?]", investigationinjurytype_path(@investigationinjurytype), "post" do

      assert_select "input[name=?]", "investigationinjurytype[investigation_id]"

      assert_select "input[name=?]", "investigationinjurytype[injurytype_id]"
    end
  end
end
