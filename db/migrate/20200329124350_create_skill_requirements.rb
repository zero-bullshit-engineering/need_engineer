class CreateSkillRequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :skill_requirements, id: :uuid do |t|
      t.references :project_profile, null: false, foreign_key: true, type: :uuid
      t.references :skill, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
