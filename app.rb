require 'sinatra'
require 'sinatra/reloader'

get '/' do
  slim :index
end

get '/api/battle' do
  "100,200|1\n100,100|0\n300,200|2"
end

get '/assets/js/send_form.js' do
  coffee :'assets/js/send_form'
end

get '/assets/js/game.js' do
  coffee :'assets/js/game'
end

get '/assets/css/application.css' do
  sass :'assets/css/application'
end

