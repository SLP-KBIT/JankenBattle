require File.dirname(__FILE__) + '/spec_helper'

describe "App" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  describe "レスポンスの精査" do
    describe "GET /" do
      subject { get '/' }
      it "正常なレスポンスが返ること" do
        expect(subject).to be_ok
      end
    end

    describe "GET /api/battle" do
      subject { get '/api/battle' }
      it "正常なレスポンスが返ること" do
        expect(subject).to be_ok
      end
    end

    describe "GET /assets/js/send_form.js" do
      subject { get '/assets/js/send_form.js' }
      it "正常なレスポンスが返ること" do
        expect(subject).to be_ok
      end
    end

    describe "GET /assets/js/game.js" do
      subject { get '/assets/js/game.js' }
      it "正常なレスポンスが返ること" do
        expect(subject).to be_ok
      end
    end

    describe "GET /assets/js/turn.js" do
      subject { get '/assets/js/turn.js' }
      it "正常なレスポンスが返ること" do
        expect(subject).to be_ok
      end
    end

    describe "GET /assets/js/hand.js" do
      subject { get '/assets/js/hand.js' }
      it "正常なレスポンスが返ること" do
        expect(subject).to be_ok
      end
    end

    describe "GET /assets/css/application.css" do
      subject { get '/assets/css/application.css' }
      it "正常なレスポンスが返ること" do
        expect(subject).to be_ok
      end
    end
  end
end

