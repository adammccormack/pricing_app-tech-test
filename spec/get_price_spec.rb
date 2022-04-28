# frozen_string_literal: true

require 'get_price'

describe GetPrice do
  subject(:get_price) { described_class.new }

  it { is_expected.to respond_to(:call).with(1).argument }

  describe '#call' do
    it 'calculates the cheapest rate when given a duration in minutes' do
      expect(get_price.call(5)).to eq(10)
      expect(get_price.call(11)).to eq(22)
      expect(get_price.call(120)).to eq(44)
      expect(get_price.call(180)).to eq(60)
      expect(get_price.call(1440)).to eq(60)
      expect(get_price.call(2880)).to eq(105)
      expect(get_price.call(20_160)).to eq(210)
    end
  end
end
