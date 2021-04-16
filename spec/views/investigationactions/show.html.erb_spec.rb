require 'rails_helper'

RSpec.describe "investigationactions/show", type: :view do
  before(:each) do
    @investigationaction = assign(:investigationaction, Investigationaction.create!(
      investigation: nil,
      action: "Action",
      resposibility: "Resposibility"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Action/)
    expect(rendered).to match(/Resposibility/)
  end
end
