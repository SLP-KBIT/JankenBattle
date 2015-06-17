require 'sinatra'
require 'sinatra/reloader'

get '/' do
  slim :index
end

get '/api/battle' do
  "name = " + params["player1_name"]
end

get '/assets/js/send_form.js' do
  coffee :'assets/js/send_form'
end

get '/assets/js/game.js' do
  coffee :'assets/js/game'
end

