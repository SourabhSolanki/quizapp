class ResultsController < ApplicationController

  def create
    @result = Result.new(result_params.merge({user: current_user}))
    if @result.save
      redirect_to dashboards_path
    else
      flash[:errors] = @result.errors.full_messages
      redirect_to dashboards_path
    end
  end

  private

  def result_params
      params.require(:result).permit(
          :quiz_id,
          answered_questions_attributes: [ :answer_id, :question_id]
      )
  end
end
