class SearchsController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def search
    @model = params["model"]
    @text = params["text"]
    @records = search_for(@model, @text)
  end
  
  def show
    @musics = Music.all
    if params[:search].present?
      @searchartists = RSpotify::Artist.search(params[:search])
    end
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
