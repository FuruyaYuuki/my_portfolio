class TopController < ApplicationController
    
  def index
    @questions = Question.all.order(created_at: :desc)
  end
  
end
