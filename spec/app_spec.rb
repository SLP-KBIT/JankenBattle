require File.dirname(__FILE__) + '/spec_helper'

describe 'App' do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  describe 'レスポンスの精査' do
    describe 'GET /' do
      subject { get '/' }
      it '正常なレスポンスが返ること' do
        expect(subject).to be_ok
      end
    end

    describe 'GET /api/battle' do
      subject { get '/api/battle' }
      it '正常なレスポンスが返ること' do
        expect(subject).to be_ok
      end
    end
  end
end

