require 'sinatra'
require 'sinatra/reloader'

get '/' do
  slim :index
end

get '/api/battle' do
  "0,1,0\n0,0,2\n2,1,1"
end

get '/assets/js/send_form.js' do
  coffee :'assets/js/send_form'
end

get '/assets/js/game.js' do
  coffee :'assets/js/game'
end

