require "rails_helper"

RSpec.describe "project_profiles/edit", type: :view do
  before(:each) do
    @project_profile = assign(:project_profile, ProjectProfile.create!(
      name: "MyString",
      short_description: "MyText",
      domain_introduction: "MyText",
      project_link: "MyString",
    ))
  end

  it "renders the edit project_profile form" do
    render

    assert_select "form[action=?][method=?]", project_profile_path(@project_profile), "post" do
      assert_select "input[name=?]", "project_profile[name]"

      assert_select "textarea[name=?]", "project_profile[short_description]"

      assert_select "textarea[name=?]", "project_profile[domain_introduction]"

      assert_select "input[name=?]", "project_profile[project_link]"
    end
  end
end
