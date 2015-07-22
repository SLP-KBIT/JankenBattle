require 'sinatra'
require 'sinatra/reloader'
require 'json'

require './lib/strategy'

def convert_hand(hand)
  return 'rock' if hand == 100
  return 'scissors' if hand == 200
  return 'paper' if hand == 300
  'none'
end

get '/' do
  slim :index
end

get '/api/battle' do
  `cd janken && make clean && make`
  result_csv = `./janken/janken.exe`.split(/\r\n|\n/)
  result = []
  result_csv.each do |turn|
    elem = turn.split(',').map(&:to_i)
    hand1 = elem[0]
    hand2 = elem[1]
    # winner_id = elem[2]
    result << { hand1: convert_hand(hand1), hand2: convert_hand(hand2) }
  end
  result.to_json
end

post '/api/upload/:id' do
  strategy = Strategy.new(params[:id], params[:text])
  strategy.write
  true
end

