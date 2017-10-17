require 'sinatra'
require 'sinatra/contrib/all'


require_relative '../models/album'

get '/albums' do
  @albums = Album.all()
  erb(:all_albums)
end

get '/albums/new' do
  @artists = Artist.all
  erb(:albums_new)
end

post '/albums/' do
  album = Album.new(params)
  album.save
  redirect to('/albums')
end
