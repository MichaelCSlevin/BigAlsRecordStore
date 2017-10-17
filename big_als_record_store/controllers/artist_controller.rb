require 'sinatra'
require 'sinatra/contrib/all'


require_relative '../models/artist'

get '/artists' do
  @artists = Artist.all()
  erb(:all_artists)
end



# put everything related to artist here.

# for delete, get form from user with id to be deleted

# then post the id to the delete route


# get 'artist/' form
#shows input form
#erb form

get '/artists/new' do
  erb(:artists_new)
end



#post artist form - actually creates database entry

post '/artists/' do
  artist = Artist.new(params)
  artist.save
  redirect to('/artists')
end


#redirect user
