# frozen_string_literal: true

class ProjectProfile < ApplicationRecord
  has_many :skill_requirements
  has_many :skills, through: :skill_requirements

  belongs_to :user
end
