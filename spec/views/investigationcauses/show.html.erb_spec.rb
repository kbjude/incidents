require 'rails_helper'

RSpec.describe "investigationcauses/show", type: :view do
  before(:each) do
    @investigationcause = assign(:investigationcause, Investigationcause.create!(
      investigation: nil,
      cause: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
