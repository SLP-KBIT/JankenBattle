# coding: utf-8

require File.dirname(__FILE__) + '/../spec_helper'
require File.dirname(__FILE__) + '/../../lib/module/slice_text'

describe SliceText do
  include Rack::Test::Methods
  include SliceText

  describe 'メソッドの動作確認' do
    let(:text) { File.read(File.dirname(__FILE__) + '/../submit.c') }

    describe '#slice_without' do
      it '識別子以外の文字列を切り出せること' do
        expect(slice_without(text)).to eq [%w(hoge foo), %w(poge)]
      end
    end

    describe '#slice_within' do
      it '識別子以内の文字列を切り出せること' do
        expect(slice_within(text)).to eq %w(piyo fuga)
      end
    end
  end
end

