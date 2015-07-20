# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/submit'

describe Submit do
  include Rack::Test::Methods

  describe 'メソッドの動作確認' do
    let(:text) { File.read(File.dirname(__FILE__) + '/submit.c') }
    let(:submit) { Submit.new(id, text) }

    before(:each) { submit.write }

    describe '#exist?' do
      let(:id) { 1 }
      it 'ファイルの存在を確認できること' do
        expect(submit.exist?).to eq true
      end
    end
  end
end

