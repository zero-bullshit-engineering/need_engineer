# frozen_string_literal: true

class AddUserIdToProjectProfile < ActiveRecord::Migration[6.0]
  def change
    add_reference :project_profiles, :user, null: false, foreign_key: true, type: :uuid
  end
end
