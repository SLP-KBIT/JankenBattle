# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/template'

describe Template do
  include Rack::Test::Methods

  describe 'メソッドの動作確認' do
    let(:template) { Template.new(id) }

    describe '#exist?' do
      let(:id) { 1 }
      it 'ファイルの存在を確認できること' do
        expect(template.exist?).to eq true
      end
    end
  end
end

