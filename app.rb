require 'sinatra'
require 'sinatra/reloader'

get '/' do
  slim :index
end

get '/api/battle' do
  "[{\"hand1\":\"paper\",\"hand2\":\"rock\"},{\"hand1\":\"rock\",\"hand2\":\"scissors\"}]"
end

post '/api/upload' do
  File.open('./tmp/strategy.c', 'w') do |f|
    f.puts params[:text]
  end
  true
end

