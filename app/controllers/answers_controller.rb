class AnswersController < ApplicationController

  def create
    @answer = Answer.new(details: params[:answer][:details], question: params[:question_id])

  end


  private

  def answer_params
    params.require(:answer).permit(:description)
  end

end
