require 'rails_helper'

RSpec.describe "causes/show", type: :view do
  before(:each) do
    @cause = assign(:cause, Cause.create!(
      name: "Name",
      category: "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
  end
end
