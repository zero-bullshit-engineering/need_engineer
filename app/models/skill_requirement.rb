class SkillRequirement < ApplicationRecord
  belongs_to :project_profile
  belongs_to :skill
end
