# coding: utf-8

require File.dirname(__FILE__) + '/../spec_helper'
require File.dirname(__FILE__) + '/../../lib/module/slice_text'

describe SliceText do
  include Rack::Test::Methods
  include SliceText

  describe 'メソッドの動作確認' do
    let(:text) { File.read(File.dirname(__FILE__) + '/../submit.c') }
    let(:error_text) do
      <<EOS
hoge
foo
bar
EOS
    end

    describe '#slice_without' do
      context 'パターンにマッチする文字列が存在する場合' do
        it '識別子以外の文字列を切り出せること' do
          expect(slice_without(text)).to eq [%w(hoge foo), %w(poge)]
        end
      end
      context 'パターンにマッチする文字列が全く存在しない場合' do
        it '全ての文字列を返すこと' do
          expect(slice_without(error_text)).to eq [%w(hoge foo bar), nil]
        end
      end
    end

    describe '#slice_within' do
      context 'パターンにマッチする文字列が存在する場合' do
        it '識別子以内の文字列を切り出せること' do
          expect(slice_within(text)).to eq %w(piyo fuga)
        end
      end
      context 'パターンにマッチする文字列が全く存在しない場合' do
        it '全ての文字列を返すこと' do
          expect(slice_within(error_text)).to eq error_text.split(/\r\n|\n/)
        end
      end
    end
  end
end

