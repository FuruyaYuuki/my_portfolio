class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    Answer.create(create_params)
    redirect_to("/")
  end
  
  def edit
    @answer = Answer.find(params[:id])
  end
  
  def update
    answer = Answer.find(params[:id])
    answer.update(update_params)
    redirect_to("/")
  end

  def destroy
    answer = Answer.find(params[:id])
    answer.destroy
    redirect_to("/")
  end

  private
  def create_params
    params.require(:answer).permit(:question_id, :text).merge(user_id: current_user.id)
  end
  
  def update_params
    params.require(:answer).permit(:text)
  end  
  
end
