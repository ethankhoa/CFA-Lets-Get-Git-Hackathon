require 'rails_helper'

RSpec.describe "collaborators/edit", type: :view do
  before(:each) do
    @collaborator = assign(:collaborator, Collaborator.create!(
      :project => nil,
      :user => nil,
      :approved => false
    ))
  end

  it "renders the edit collaborator form" do
    render

    assert_select "form[action=?][method=?]", collaborator_path(@collaborator), "post" do

      assert_select "input#collaborator_project_id[name=?]", "collaborator[project_id]"

      assert_select "input#collaborator_user_id[name=?]", "collaborator[user_id]"

      assert_select "input#collaborator_approved[name=?]", "collaborator[approved]"
    end
  end
end
