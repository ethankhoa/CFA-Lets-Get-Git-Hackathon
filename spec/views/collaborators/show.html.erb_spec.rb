require 'rails_helper'

RSpec.describe "collaborators/show", type: :view do
  before(:each) do
    @collaborator = assign(:collaborator, Collaborator.create!(
      :project => nil,
      :user => nil,
      :approved => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
