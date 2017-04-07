require 'rails_helper'

RSpec.describe "collaborators/index", type: :view do
  before(:each) do
    assign(:collaborators, [
      Collaborator.create!(
        :project => nil,
        :user => nil,
        :approved => false
      ),
      Collaborator.create!(
        :project => nil,
        :user => nil,
        :approved => false
      )
    ])
  end

  it "renders a list of collaborators" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
