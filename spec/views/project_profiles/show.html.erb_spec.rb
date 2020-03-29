require 'rails_helper'

RSpec.describe "project_profiles/show", type: :view do
  before(:each) do
    @project_profile = assign(:project_profile, ProjectProfile.create!(
      name: "Name",
      short_description: "MyText",
      domain_introduction: "MyText",
      project_link: "Project Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Project Link/)
  end
end
