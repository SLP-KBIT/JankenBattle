require 'sinatra'
require 'sinatra/reloader'

get '/' do
  slim :index
end

get '/api/battle' do
  "name = " + params["player1_name"]
end

