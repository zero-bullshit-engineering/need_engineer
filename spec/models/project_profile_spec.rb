require "rails_helper"

RSpec.describe ProjectProfile, type: :model do
  describe "validation" do
    it "does not allow an empty name" do
      expect(ProjectProfile.new(name: "")).to(be_invalid)
    end
  end
end
