require "rails_helper"

RSpec.describe Skill, type: :model do
  describe "validation" do
    it "does not allow an empty name" do
      expect(Skill.new(name: "")).to(be_invalid)
    end
  end
end
