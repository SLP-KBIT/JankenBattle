# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/strategy'

describe Strategy do
  include Rack::Test::Methods

  describe 'メソッドの動作確認' do
    let(:text) { File.read(File.dirname(__FILE__) + '/submit.c') }
    let(:strategy) { Strategy.new(id, text) }

    before(:each) { strategy.write }

    describe '#write' do
      let(:id) { 1 }
      it 'ファイルを書き込めること' do
        expect(strategy.write).to be_truthy
      end
    end

    describe '#exist?' do
      let(:id) { 1 }
      it 'ファイルの存在を確認できること' do
        expect(strategy.exist?).to be_truthy
      end
    end
  end
end

