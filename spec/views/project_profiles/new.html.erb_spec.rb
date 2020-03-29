require 'rails_helper'

RSpec.describe "project_profiles/new", type: :view do
  before(:each) do
    assign(:project_profile, ProjectProfile.new(
      name: "MyString",
      short_description: "MyText",
      domain_introduction: "MyText",
      project_link: "MyString"
    ))
  end

  it "renders new project_profile form" do
    render

    assert_select "form[action=?][method=?]", project_profiles_path, "post" do

      assert_select "input[name=?]", "project_profile[name]"

      assert_select "textarea[name=?]", "project_profile[short_description]"

      assert_select "textarea[name=?]", "project_profile[domain_introduction]"

      assert_select "input[name=?]", "project_profile[project_link]"
    end
  end
end
