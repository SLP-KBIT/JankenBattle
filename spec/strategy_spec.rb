# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/strategy'

describe Strategy do
  include Rack::Test::Methods

  describe 'メソッドの動作確認' do
    let(:text) do
      <<'EOS'
hoge
foo
//--- PLAYER_STRATEGY_START
piyo
fuga
//--- PLAYER_STRATEGY_END
poge
EOS
    end
    let(:strategy) { Strategy.new(text) }

    before(:each) { strategy.write }

    describe '#exist?' do
      it 'ファイルの存在を確認できること' do
        expect(strategy.exist?).to eq true
      end
    end

    describe '#exist_strategy?' do
      before(:each) { strategy.create }
      it '結合した戦略ファイルの存在を確認できること' do
        expect(strategy.exist_strategy?).to eq true
      end
    end

    describe '#slice_without' do
      it '識別子以外の文字列を切り出せること' do
        expect(strategy.slice_without(text)).to eq [%w(hoge foo), %w(poge)]
      end
    end

    describe '#slice_within' do
      it '識別子以内の文字列を切り出せること' do
        expect(strategy.slice_within).to eq %w(piyo fuga)
      end
    end
  end
end

