# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/strategy'

describe Strategy do
  include Rack::Test::Methods

  describe 'メソッドの動作確認' do
    before(:each) { strategy.write }

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

    describe '#exist?' do
      it 'ファイルの存在を確認できること' do
        expect(strategy.exist?).to eq true
      end
    end

    describe '#slice_template' do
      it '識別子以外の文字列を切り出せること' do
        expect(strategy.slice_template(text)).to eq ['hoge\nfoo', 'poge']
      end
    end

    describe '#slice' do
      it '識別子以内の文字列を切り出せること' do
        expect(strategy.slice).to eq 'piyo\nfuga'
      end
    end
  end
end

