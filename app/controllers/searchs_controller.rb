class SearchsController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def search
    @model = params["model"]
    @text = params["text"]
    @records = search_for(@model, @text)
    if params[:text].present?
      @tracks = RSpotify::Track.search(params[:text], offset: 0, market: nil)
    end
  end
  
  def show
  end
  
  private
  def search_for(model, text)
    if model == 'user'
      User.where('nickname LIKE ?', '%'+text+'%')
    elsif model == 'question'
      Question.where('text LIKE ?', '%'+text+'%')
    end
  end
  
end
