require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :title => "MyString",
      :user => nil,
      :description => "MyText",
      :status => "MyString",
      :ratings => 1
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_status[name=?]", "project[status]"

      assert_select "input#project_ratings[name=?]", "project[ratings]"
    end
  end
end
