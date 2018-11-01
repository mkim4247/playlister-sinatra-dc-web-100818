class SongsController < ApplicationController


  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end
  
  get '/songs/new' do
  	 @artists = Artist.all 
  	erb :"songs/new"

  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :"songs/show"
  end

  post '/songs' do
  	song = Song.create(name: params["song"]["name"], artist: params["song"]["artist"], genre: params["song"]["genre"])

  end

end
