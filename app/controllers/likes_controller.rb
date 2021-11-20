class LikesController < ApplicationController
  before_action :question_params, only: [:create, :destroy]
  
  def show
    @user = User.find(params[:id])
  end
  
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
