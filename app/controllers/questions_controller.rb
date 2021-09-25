class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end
  
  def new
    
  end

  def create
  end

  def destroy
  end

  private
  def create_params
    params.require(:question).permit(:text)
  end
end
