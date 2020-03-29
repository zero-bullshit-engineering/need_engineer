class CreateProjectProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :project_profiles, id: :uuid do |t|
      t.string :name
      t.text :short_description
      t.text :domain_introduction
      t.string :project_link

      t.timestamps
    end
  end
end
