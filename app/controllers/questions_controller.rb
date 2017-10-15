class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(title: params[:question][:title], details: params[:question][:details])
    @error = ""
    if @question.save
      redirect_to @question
    else
      @error = "One or more fields has invalid input."
      render :new
    end
  end
end
