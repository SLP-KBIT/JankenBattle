# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/strategy'

describe Strategy do
  include Rack::Test::Methods

  describe 'メソッドの動作確認' do
    let(:strategy) { Strategy.new("hogehogehoge") }

    describe '#exists_strategy?' do
      before(:each) { strategy.write }
      it 'ファイルの存在を確認できること' do
        expect(strategy.exist?).to eq true
      end
    end
  end
end

