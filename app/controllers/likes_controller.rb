class LikesController < ApplicationController
  
  def create
    @question = Question.find(params[:question])
    current_user.like(@question)
  end

  def destroy
    @question = Like.find(params[:id]).question
    current_user.unlike(@question)
  end
  
end
