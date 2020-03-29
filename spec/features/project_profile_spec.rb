# frozen_string_literal: true

describe "ProjectProfile", type: :feature do
  context "when logged in" do
    before :each do
      user = create(:user)
      sign_in user
    end

    it "can be created" do
      visit "/project_profiles/new"
      fill_in "Name", with: "My Project"
      fill_in "Short description", with: "My project description"
      fill_in "Domain introduction", with: "Biology is the science of living things"

      click_button "Create Project profile"

      expect(page).to have_content "created"
    end
  end
end
