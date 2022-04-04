class DashboardsController < ApplicationController
  def show
    @quiz = Quiz.first
  end
end
