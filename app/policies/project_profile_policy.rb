# frozen_string_literal: true

class ProjectProfilePolicy < ApplicationPolicy
  def edit?
    @record.user = @user
  end

  def update?
    @record.user = @user
  end
end
