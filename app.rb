require 'sinatra'
require 'sinatra/reloader'

require './lib/strategy'

get '/' do
  slim :index
end

get '/api/battle' do
  "[{\"hand1\":\"paper\",\"hand2\":\"rock\"},{\"hand1\":\"rock\",\"hand2\":\"scissors\"}]"
end

post '/api/upload/:id' do
  strategy = Strategy.new(params[:id], params[:text])
  strategy.write
  true
end

