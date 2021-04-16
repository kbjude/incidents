require 'rails_helper'

RSpec.describe "investigationcosts/show", type: :view do
  before(:each) do
    @investigationcost = assign(:investigationcost, Investigationcost.create!(
      investigation: nil,
      item: "Item",
      amount: 2.5,
      currency: "Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Item/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Currency/)
  end
end
