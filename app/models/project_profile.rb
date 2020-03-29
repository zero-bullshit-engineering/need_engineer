class ProjectProfile < ApplicationRecord
  has_many :skill_requirements
  has_many :skills, through: :skill_requirements
end
