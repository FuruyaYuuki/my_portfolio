class PlaylistsController < ApplicationController
  
  def index
    @playlists = RSpotify::Playlist.search('はげまして', limit: 5)
  end
  
end
