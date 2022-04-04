class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:id])
    @result = Quiz.find(params[:id]).build_result()
  end
end
