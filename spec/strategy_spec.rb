# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/strategy'

describe Strategy do
  include Rack::Test::Methods

  describe 'メソッドの動作確認' do
    let(:text) { File.read(File.dirname(__FILE__) + '/submit.c') }
    let(:strategy) do
      template_mock = double('Template Class')
      submit_mock = double('Submit Class')
      allow(template_mock)
        .to receive(:get_slice_text)
        .and_return([%w(hoge foo), %w(poge)])
      allow(submit_mock)
        .to receive(:get_slice_text)
        .and_return([%w(poge fuga)])
      strategy = Strategy.new(id, text)
      allow(strategy).to receive(:template).and_return(template_mock)
      allow(strategy).to receive(:submit).and_return(submit_mock)
      strategy
    end

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

