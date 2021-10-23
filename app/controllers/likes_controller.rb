class LikesController < ApplicationController
  before_action :question_params
  
  def create
    Like.create(user_id: current_user.id, question_id: params[:id])
  end
  
  def destroy
    Like.find_by(user_id: current_user.id, question_id: params[:id]).destroy
  end
  
  private
  
  def question_params
    @question = Question.find(params[:id])
  end
  
end
