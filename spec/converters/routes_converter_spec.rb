require 'rails_helper'

describe RoutesConverter, :type => :model do
  subject { described_class.instance }

  describe '#convert' do
    context 'with empty mesh' do
      let(:mesh) { '' }

      it 'returns empty array' do
        expect(subject.convert(mesh)).to eq []
      end
    end

    context 'with one line' do
      let(:mesh) { 'A B 10' }
      let(:route_attributes) { { source: 'A', destination: 'B', distance: BigDecimal.new(10) } }

      it 'returns an array with one route' do
        expect(subject.convert(mesh)).to have(1).route
        expect(subject.convert(mesh).first).to be_a_new(Route).with(route_attributes)
      end
    end

    context 'with two lines' do
      let(:mesh) { "A B 10\nC D 20" }

      it 'return an array with two routes' do
        expect(subject.convert(mesh)).to have(2).routes
      end
    end
  end
end
