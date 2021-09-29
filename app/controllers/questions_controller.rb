class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find_by(id: params[:id])
  end
  
  def new
    
  end

  def create
    @question = Question.new(text: params[:text])
    @question.save
    redirect_to("/")
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to("/")
  end

  private
  def create_params
    params.require(:question).permit(:text)
  end
end
