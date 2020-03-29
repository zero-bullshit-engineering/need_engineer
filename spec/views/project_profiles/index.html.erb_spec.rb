require 'rails_helper'

RSpec.describe "project_profiles/index", type: :view do
  before(:each) do
    assign(:project_profiles, [
      ProjectProfile.create!(
        name: "Name",
        short_description: "MyText",
        domain_introduction: "Intro",
        project_link: "Project Link"
      ),
      ProjectProfile.create!(
        name: "Name",
        short_description: "MyText",
        domain_introduction: "Intro",
        project_link: "Project Link"
      )
    ])
  end

  it "renders a list of project_profiles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Intro".to_s, count: 2
    assert_select "tr>td", text: "Project Link".to_s, count: 2
  end
end
