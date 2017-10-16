require 'sinatra'
require 'sinatra/contrib/all'


require_relative '../models/inventory'

get '/inventory' do
  @inventory = Inventory.all()
  erb(:inventory)
end
