require 'sinatra'
require 'sinatra/reloader'

get '/' do
  slim :index
end

get '/api/battle' do
  "100,200|1\n100,100|0\n300,200|2"
end

get '/assets/css/application.css' do
  sass :'assets/css/application'
end

