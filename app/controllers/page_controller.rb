# frozen_string_literal: true

class PageController < ApplicationController
  def home
    authorize :page, :home?
  end
end
