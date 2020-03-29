# frozen_string_literal: true

class PagePolicy < Struct.new(:user, :dashboard)
  def home?
    true
  end
end
