require 'sinatra'
require 'sinatra/contrib/all'


require_relative '../models/artist'

get '/artists' do
  @artists = Artist.all()
  erb(:all_artists)
end
