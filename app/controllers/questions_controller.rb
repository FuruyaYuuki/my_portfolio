class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
  end
  
  def new
    @question = Question.new
  end

  def create
    Question.create(create_params)
    redirect_to("/")
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to("/")
  end

  private
  def create_params
    params.require(:question).permit(:text, :title).merge(user_id: current_user.id)
  end
  
end
