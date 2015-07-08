require 'sinatra'
require 'sinatra/reloader'

get '/' do
  slim :index
end

get '/api/battle' do
  "[{\"hand1\":\"paper\",\"hand2\":\"rock\"},{\"hand1\":\"rock\",\"hand2\":\"scissors\"}]"
end

